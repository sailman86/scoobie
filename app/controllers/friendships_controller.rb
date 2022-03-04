
class FriendshipsController < ApplicationController

  def index
    @friendships = current_user.friendship
    authorize @friendships
  end

  def new
    @friendship = Friendship.new
    authorize @friendship
  end

  def create
    @friendship = Friendship.new(friendship_params)
    authorize @friendship
    @friendship.asker_id = current_user
    @friendship.receiver_id = User.find(params[:id])
    @friendship.save
  end

  private

  def friendship_params
    params.require(:friendship).permit(:status, :asker_id, :receiver_id)
  end
end
