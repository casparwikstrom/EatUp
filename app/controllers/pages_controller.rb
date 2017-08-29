class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @popups = Popup.all
    @wishlist = Wishlist.new
  end
end
