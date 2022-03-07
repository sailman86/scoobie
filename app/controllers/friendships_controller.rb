
class FriendshipsController < ApplicationController
  def index
    # @friendships = current_user.friendships
    # friendship_status
    # authorize @friendships
    @pending_requests = policy_scope(Friendship).where(asker: current_user, status: false)
    @received_requests = policy_scope(Friendship).where(receiver: current_user, status: false)
  end

  def new
    @friendship = Friendship.new
    authorize @friendship
  end

  def create
    @friendship = Friendship.new
    authorize @friendship
    @friendship.asker = current_user
    @friendship.receiver = User.find(params[:user_id])
    @friendship.status = false
    if @friendship.save
      redirect_to @friendship.receiver
    else
      render "new"
    end
  end

  def accept
    @friendship = Friendship.find(params[:id])
    @friendship.status = true
    authorize @friendship
    if @friendship.save
      redirect_to user_friendships_path(current_user)
    end
  end

  def decline
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to user_friendships_path(current_user)
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship = Friendship.update(friendship_params)
    @friendship.status = true
  end

  # def friendship_status
  #   @pending_requests = Friendship.where(asker: current_user, status: false)
  #   authorize @pending_requests
  #   @recieved_requests = Friendship.where(receiver: current_user, status: false)
  #   authorize @recieved_requests
  #   # @friendships = Friendship.where(receiver: current_user, status: true).or(Friendship.where(asker: current_user, status: true))
  # end

  # def friendship_params
  #   params.permit(:id)
  # end
end
