class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :ingredient
      t.references :cocktail
      t.timestamps
    end
  end
end
