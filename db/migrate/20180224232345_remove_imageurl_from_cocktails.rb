class RemoveImageurlFromCocktails < ActiveRecord::Migration[5.1]
  def change
    remove_column :cocktails, :imageurl
  end
end
