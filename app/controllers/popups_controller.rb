class PopupsController < ApplicationController
  before_action :set_popup, only: [:show, :edit, :update, :destroy]

   def index
    if params[:type_ids]
      @popups = policy_scope(Popup).joins(:types).where(types: { id: params[:type_ids]})
    else
      @popups = policy_scope(Popup).order(created_at: :desc)
    end

    respond_to do |format|
      format.html
      format.js
    end

   end

  def show
    @orders = @popup.orders
  end

  def edit
  end

  def update
    @popup.update(popup_params)
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

  def create
    @popup = Popup.new(popup_params)
    @popup.user = current_user
    authorize @popup
    if @popup.save
      redirect_to popup_path(@popup)
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
    params.require(:popup).permit(:title, :description, :user_id, photos: [])
  end

end


