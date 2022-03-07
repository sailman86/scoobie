class FriendshipPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    user_is_owner?
  end

  def new?
    true
  end

  def create?
    true
  end

  def accept?
    true
  end

  private

  def user_is_owner?
    user == record.receiver
  end
end
