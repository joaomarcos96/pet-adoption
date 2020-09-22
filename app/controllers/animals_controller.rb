class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[show edit update]

  def index
    @animals = Animal.available_for_adoption
  end

  def new
    @animal = Animal.new
  end

  def edit; end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to animals_path, notice: 'Pet was successfully added'
    else
      render :new
    end
  end

  def update
    if @animal.update(animal_params)
      redirect_to animals_path, notice: 'Pet was successfully updated'
    else
      render :edit
    end
  end

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :date_of_birth, :animal_type_id)
  end
end
