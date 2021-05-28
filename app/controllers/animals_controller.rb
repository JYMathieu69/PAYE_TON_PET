class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_animal, only: [:show]

  KEYS_ANIMAL = %i[
    species
    name
    race
    gender
    description
    chip
    worm
    vaccined
    accessories
    daily_price
    owner_id
    photo
  ]

  def index
    @animals = Animal.all
    if params[:species].present?
      @animals = @animals.where(species: params[:species])
    end
    if params[:location].present?
      @animals = @animals.joins(:owner).where(users: {address: params[:location]})
    end
    if params[:date].present?
      @animals = @animals..select { |a| a.dispo?(params[:date]) }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.owner_id = current_user.id
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

  def search_params
    params.require(:bookings).permit(:species, :location, :date)
  end
end
