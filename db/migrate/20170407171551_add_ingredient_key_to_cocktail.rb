class AddIngredientKeyToCocktail < ActiveRecord::Migration[5.0]
  def change
    add_reference :cocktails, :ingredient, foreign_key: true
  end
end
