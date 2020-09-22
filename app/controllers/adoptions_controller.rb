class AdoptionsController < ApplicationController
  def new
    @adoption = Adoption.new
  end

  def create
    @adoption = Adoption.new(adoption_params)
    @adoption.animal_id = params[:animal_id]

    if @adoption.save
      redirect_to animals_path, notice: 'Pet was successfully marked as adopted'
    else
      render :new
    end
  end

  def adoption_params
    params.require(:adoption).permit(:adopter_name, :adoption_date, :animal_id)
  end
end
