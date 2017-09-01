class WishlistsController < ApplicationController
  def index
    @wishlists = policy_scope(Wishlist).order(created_at: :desc)
    authorize @wishlists
  end

  def new
    set_popup
    @wishlist = Wishlist.new
    authorize @wishlist
  end

  def create
    @wishlist = Wishlist.new
    @wishlist.user = current_user
    @wishlist.popup = Popup.find(params[:popup_id])
    authorize @wishlist
    if @wishlist.save
      respond_to do |format|
        format.html { redirect_to popup_path(@wishlist.popup), notice: "#{@wishlist.popup.title} added to wishlist." }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to popup_path(@wishlist.popup), notice: "#{@wishlist.popup.title} wasn't saved to wishlist" }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    set_wishlist
    authorize @wishlist
    @wishlist.destroy
    redirect_to wishlists_path
  end

  private

  def set_popup
    @popup = Popup.find(params[:popup_id])
  end

  def set_user
    @user = current_user
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
    authorize @wishlist
  end

  def wishlist_params
    params.require(:wishlist).permit(:user_id, :popup_id)
  end

end
