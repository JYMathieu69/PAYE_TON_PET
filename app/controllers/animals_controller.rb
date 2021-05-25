class AnimalsController < ApplicationController
  before_action :xxxx
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save!
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def animal_params
    params.require(:animal).permit(:species, :name, :race, :gender, :descript, :chip, :worms, :vaccined, :accessor, :daily_price, :owner_id)
  end
end
