class IngredientsController < ApplicationController

  def dogpaw
    @ingredients = Ingredient.order(name: :asc).first(15)
  end

  def snaketongue
     @ingredient = Ingredient.new(ingredient_params)
     @ingredient.save
  end


private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
