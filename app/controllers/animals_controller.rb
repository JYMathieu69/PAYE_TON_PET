class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_animal, only: [:show]

  KEYS_ANIMAL = %i[
    species
    name
    race
    gender
    descript
    chip
    worms
    vaccined
    accessor
    daily_price
    owner_id
    photo
  ]

  def index
    @animals = Animal.all
  end

  def show
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

  def my_animals
    @animals = current_user.own_animals
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(*KEYS_ANIMAL)
  end
end
