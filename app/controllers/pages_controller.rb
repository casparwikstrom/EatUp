class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def home
    @popups = Popup.all.select(&:is_ready?)
    @wishlist = Wishlist.new
  end

  def index
    @wishlist = Wishlist.new
    if params[:type_ids]
      @popups = policy_scope(Popup).joins(:types).where(types: { id: params[:type_ids]}).select(&:is_ready?)
      @hash = Gmaps4rails.build_markers(@popups) do |popup, marker|
        marker.lat popup.latitude
        marker.lng popup.longitude
      end

    elsif params[:query]
      terms = params[:query].split
      query = terms.map { |term| "LOWER(title) like '%#{term.downcase}%' OR LOWER(description) like '%#{term.downcase}%' OR LOWER(address) like '%#{term.downcase}%' OR LOWER(types.name) like '%#{term.downcase}%'" }.join(" OR ")
      @popups = policy_scope(Popup).joins(:types).where(query).order(created_at: :desc).uniq.select(&:is_ready?)
      @hash = Gmaps4rails.build_markers(@popups) do |popup, marker|
        marker.lat popup.latitude
        marker.lng popup.longitude
      end
      # query = params[:query].presence || '*'
      # @search = Popup.search(query)
      # @popups = @search.results
    else

      @popups = policy_scope(Popup).order(created_at: :desc).select(&:is_ready?)
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



