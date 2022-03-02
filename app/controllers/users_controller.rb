class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @dogs = @user.dogs
  end
end
