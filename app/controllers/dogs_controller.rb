class DogsController < ApplicationController
  def index
    if params[:query].present?
      @dogs = policy_scope(Dog).search_by_breed_and_gender(params[:query])
    else
      @dogs = policy_scope(Dog).order(created_at: :desc)
    end
  end

  def new
    @dog = Dog.new
    authorize @dog
  end

  def create
    @dog = Dog.new(dogs_params)
    @dog.user = current_user
    authorize @dog
    if @dog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
    authorize @dog
  end

  def update
    @dog = Dog.find(params[:id])
    authorize @dog
    @dog.update(dogs_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @dog = Dog.find(params[:id])
    authorize @dog
    @dog.destroy
    redirect_to root_path
  end

  private

  def dogs_params
    params.require(:dog).permit(:name, :gender, :age, :breed, :photo)
  end
end
