class PopupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user_is_over?
  end

  def destroy?
    user_is_over?
  end

  private

  def user_is_over?
    record.user == user
  end

end
