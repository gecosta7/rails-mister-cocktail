class CreateCocktails < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      # t.references  :cocktail, foreign_key: true, index: true

      t.timestamps
    end
  end
end
