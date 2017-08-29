class WishlistsController < ApplicationController
  def index
    @wishlists = policy_scope(Wishlist).order(created_at: :desc)
    authorize @wishlists
  end

  def new
    @wishlist = Wishlist.new
    authorize @wishlist
  end


  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.popup = Popup.find(params[:popop_id])
    @wishlist.user = current_user
    authorize @wishlist
    if @wishlist.save
        redirect_to wishlists_path
      else
        render :index
    end
  end

  def create
    @dose = Dose.new(permit_dose)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id]).destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def permit_dose
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end



  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
    authorize @wishlist
  end

  def wishlist_params
    params.require(:wishlist).permit(:name, :category, :user_id, :popup_id)
  end

end
