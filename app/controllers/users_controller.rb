class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @dogs = @user.dogs
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
