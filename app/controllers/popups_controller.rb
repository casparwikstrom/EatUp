require 'active_support/core_ext/numeric/conversions'

class PopupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_popup, only: [:show, :edit, :update, :destroy]

  def index
    @wishlist = Wishlist.new
    if params[:type_ids]
      @popups = policy_scope(Popup).joins(:types).where(types: { id: params[:type_ids]}).select(&:is_ready?)
    elsif params[:search]
      terms = params[:search].split
      query = terms.map { |term| "LOWER(title) like '%#{term.downcase}%' OR LOWER(types.name) like '%#{term.downcase}%'" }.join(" OR ")
      @popups = policy_scope(Popup).joins(:types).where(query).order(created_at: :desc).uniq.select(&:is_ready?)
    else
      @popups = policy_scope(Popup).order(created_at: :desc).select(&:is_ready?)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end


  # def search
  #   @hedgies = Hedgie.where.not(latitude: nil, longitude: nil)
  #   @hedgies = @hedgies.near(params[:address], 10) unless params[:address].blank?
  #   @hash = Gmaps4rails.build_markers(@hedgies) do |hedgie, marker|
  #     marker.lat hedgie.latitude
  #     marker.lng hedgie.longitude
  #     # marker.infowindow render_to_string(partial: "/hedgies/map_box", locals: { hedgie: hedgie })
  #   end
  # end

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
      redirect_to root_path
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
      format.html { redirect_to root_path, alert: 'Popup project was successfully canceled.' }
      format.json { head :no_content }
    end
  end

  private

  def set_popup
    @popup = Popup.find(params[:id])
    authorize @popup
  end

  def popup_params
    params.require(:popup).permit(:title, :description, :funding_goal, :seat_capacity, :price, :user_id, photos: [], type_ids: [])
  end

end


