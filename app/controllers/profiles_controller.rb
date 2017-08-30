class ProfilesController < ApplicationController

  before_action :set_user, only: [:edit, :update, :show]

  def show
    @popups = Popup.where(user_id: current_user.id)
    # .where(user: current_user)
    @wishlists = policy_scope(Wishlist).order(created_at: :desc)
    authorize @wishlists
    @wishlists = Wishlist.all
  end

  def edit
  end

  def update
    @user.update(user_params)
    @user.save
    if @user.save
      redirect_to profile_path(@user), notice: "successfully updated."
    else
      render :new, alert: "Error creating user."
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :photo)
  end

  def set_user
    @user = current_user
    authorize @user
  end

end
