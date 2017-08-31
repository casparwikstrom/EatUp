class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @popups = Popup.all.select(&:is_ready?)
    @wishlist = Wishlist.new
  end
end
