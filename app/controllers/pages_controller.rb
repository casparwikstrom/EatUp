class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def home
    @popups = Popup.all.select(&:is_ready?)
    @wishlist = Wishlist.new
  end

  def index
    @popups = Popup.where.not(latitude: nil, longitude: nil)
    @popups = @popups.near(params[:address], 10) unless params[:address].blank?
    @hash = Gmaps4rails.build_markers(@popups) do |popup, marker|
      marker.lat popup.latitude
      marker.lng popup.longitude

    end
  end
end
