class DosesController < ApplicationController

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @ingredients = Ingredient.all
      render "drinks/show"
  end
end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end


