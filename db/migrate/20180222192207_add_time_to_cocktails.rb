class AddTimeToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :time, :string
  end
end
