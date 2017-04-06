class CocktailsController < ApplicationController
  before_action :find_cocktail , only: [ :show, :edit, :update, :destroy, :doses ]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def edit
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :doses, :ingredients)
  end

end
