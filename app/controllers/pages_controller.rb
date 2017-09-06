class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def home
    @popups = Popup.all.select(&:is_ready?)
    @wishlist = Wishlist.new
  end


  def index
    @wishlist = Wishlist.new

    if params[:type_ids]
      @popups = policy_scope(Popup).joins(:types).where.not(latitude: nil, longitude: nil).where(types: { id: params[:type_ids]}).select(&:is_ready?)

      @hash = Gmaps4rails.build_markers(@popups) do |popup, marker|
        marker.lat popup.latitude
        marker.lng popup.longitude
      end

    elsif params[:search]
      terms = params[:search].split
      search = terms.map { |term| "LOWER(title) like '%#{term.downcase}%' OR LOWER(description) like '%#{term.downcase}%' OR LOWER(address) like '%#{term.downcase}%' OR LOWER(types.name) like '%#{term.downcase}%'" }.join(" OR ")
      @popups = policy_scope(Popup).joins(:types).where.not(latitude: nil, longitude: nil).where(search).order(created_at: :desc).uniq.select(&:is_ready?)

      @hash = Gmaps4rails.build_markers(@popups) do |popup, marker|
        marker.lat popup.latitude
        marker.lng popup.longitude
        marker.infowindow render_to_string(partial: "/popups/map_box", locals: { popup: popup })

      end
      # search = params[:search].presence || '*'
      # @search = Popup.search(search)
      # @popups = @search.results
    else
      @popups = policy_scope(Popup).where.not(latitude: nil, longitude: nil).order(created_at: :desc).select(&:is_ready?)

      @hash = Gmaps4rails.build_markers(@popups) do |popup, marker|
        marker.lat popup.latitude
        marker.lng popup.longitude
      end
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
      # marker.infowindow render_to_string(partial: "/popups/map_box", locals: { popup: popup })



