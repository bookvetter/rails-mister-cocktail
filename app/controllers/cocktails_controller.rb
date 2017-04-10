class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.order(name: :asc)
    # @cocktails = Cocktail.where.not(ingredient_id: nil).order(name: :asc)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # if @cocktail.ingredients == nil
    #   then
    @dose = Dose.new
    @ingredients = Ingredient.where.not(id: @cocktail.ingredients.map {|i| i.id}).order(name: :asc)
  end
# end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_ destroy_path(@cocktail)
  end
end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end



