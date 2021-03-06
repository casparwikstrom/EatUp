require 'active_support/core_ext/numeric/conversions'

class PopupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_popup, only: [:show, :edit, :update, :destroy]

  def index
    @wishlist = Wishlist.new
    if params[:type_ids]
      @popups = policy_scope(Popup).joins(:types).where(types: { id: params[:type_ids]}).uniq
    elsif params[:query]
      terms = params[:query].split
      query = terms.map { |term| "LOWER(title) like '%#{term.downcase}%' OR LOWER(description) like '%#{term.downcase}%' OR LOWER(types.name) like '%#{term.downcase}%'" }.join(" OR ")
      @popups = policy_scope(Popup).joins(:types).where(query).order(created_at: :desc).uniq
      # query = params[:query].presence || '*'
      # @search = Popup.search(query)
      # @popups = @search.results
    else
      @popups = policy_scope(Popup).order(created_at: :desc).uniq
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @orders = @popup.orders
    @wishlist = Wishlist.new
  end

  def edit
  end

  def update
    @popup.update(popup_params)
    @popup.deadline = Date.strptime(params[:popup][:deadline], "%m/%d/%Y")
    if @popup.save
      redirect_to popup_path(@popup)
    else
      redirect_to popup_path(@popup)
    end
  end

  def new
    @popup = Popup.new
    authorize @popup
  end

  def vote
    set_popup
    if !current_user.liked? @popup
      @popup.liked_by current_user
    else current_user.liked? @popup
      @popup.unliked_by current_user
    end
  end

  def create
    @popup = Popup.new(popup_params)
    @popup.user = current_user
    authorize @popup
    if @popup.save
      redirect_to edit_popup_path(@popup)
    else
      render :new
    end
  end

  def destroy
    @popup.destroy
    respond_to do |format|
      format.html { redirect_to profile_path, alert: 'Popup project was successfully canceled.' }
      format.json { head :no_content }
    end
  end

  private

  def set_popup
    @popup = Popup.find(params[:id])
    authorize @popup
  end

  def popup_params
    params.require(:popup).permit(:title, :description, :funding_goal, :seat_capacity, :price, :user_id,:deadline, photos: [], type_ids: [])
  end

end


