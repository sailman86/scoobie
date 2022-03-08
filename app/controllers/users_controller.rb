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
    @user.update(photo_params)
    redirect_to user_path(@user)
  end

  private

  def photo_params
    params.require(:user).permit(photos: [])
  end
end
