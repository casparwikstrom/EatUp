class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if is_admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end

    private

    def is_admin?
      user.is_admin
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
    is_owner?
  end

  def destroy?
    is_owner?
  end

  private

  def is_owner?
    record.user == user
  end

  def is_admin?
    user.is_admin
  end

end
