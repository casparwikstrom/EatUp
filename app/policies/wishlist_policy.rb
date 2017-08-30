class WishlistPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #scope.all
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end


  private

  def is_owner?
    record.user == current_user
  end
end
