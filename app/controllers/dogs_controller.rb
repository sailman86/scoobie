class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dogs_params)
    @dog.user = current_user
    if @dog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dogs_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to root_path
  end

  private

  def dogs_params
    params.require(:dog).permit(:name, :gender, :age, :breed)
  end
end
