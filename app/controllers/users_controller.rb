class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @dogs = @user.dogs
    @friendship = Friendship.where(asker: current_user, receiver: @user).first
    # @friendship.asker_id = current_user
    # @friendship.receiver_id = User.find(params[:id])
  end

  def add_photo
    skip_authorization
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.photos = params[:user][:photos]
    @user.save!
    redirect_to user_path
  end

end
