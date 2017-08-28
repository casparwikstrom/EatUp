class PopupsController < ApplicationController
  def new
    @popup = Popup.new
    authorize @popup
  end

  def create
    @popup = Popup.new
    @user = current_user
  end

  private

  def popupparams

  end

end
