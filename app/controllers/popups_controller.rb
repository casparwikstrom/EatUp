class PopupsController < ApplicationController

   def index
    @popups = policy_scope(Popup).order(created_at: :desc)
   end

  def show
    set_popup
    authorize @popup
  end

  def edit
    set_popup
  end

  def update
    set_popup
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
    set_popup
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


