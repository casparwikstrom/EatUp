class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def home
    @popups = Popup.all.select(&:is_ready?)
    @wishlist = Wishlist.new
  end

  def index
    @category = params[:category]
    @place = params[:address]
    @popups = Popup.joins(:types).where.not(latitude: nil, longitude: nil).near(@place, 10).where(types: {name: @category.capitalize }).distinct unless @place.blank? || @category.blank?
    @hash = Gmaps4rails.build_markers(@popups) do |popup, marker|
      marker.lat popup.latitude
      marker.lng popup.longitude
    end
    #@popups = @popups.near(params[:address], 10) unless params[:address].blank?
    # Popup.joins(:types).where.not(latitude: nil, longitude: nil).near(params[:address], 10).where(types: {name: @category })

  end
end
      # marker.infowindow render_to_string(partial: "/popups/map_box", locals: { popup: popup })



