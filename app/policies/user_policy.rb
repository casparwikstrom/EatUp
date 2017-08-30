class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def edit?
    true
  end

  def update?
    is_current_user?
  end

  def destroy?
    is_current_user?
  end

  private

  def is_current_user?
    user == user
  end

end
