class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @dogs = @user.dogs
  end

  def add_photo
    @user = User.find(params[:id])
    @user.update(photo_params)
    redirect_to(:controller => "users", :action => "show")
  end

  private

  def photo_params
    params.require(:user).permit(photos: [])
  end
end
