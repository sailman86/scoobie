class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def add_photo?
    true
  end

  def update?
    user == record
  end

  def destroy?
    user == record
  end
end
