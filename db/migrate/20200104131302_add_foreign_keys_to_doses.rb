class AddForeignKeysToDoses < ActiveRecord::Migration[5.2]
  def change
    # change_column :doses, :ingredient, foreign_key: true
    # change_column :doses, :cocktail, foreign_key: true
    add_foreign_key :doses, :ingredients
    add_foreign_key :doses, :cocktails
  end
end
