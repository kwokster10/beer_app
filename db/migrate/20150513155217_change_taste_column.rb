class ChangeTasteColumn < ActiveRecord::Migration
  def change
    rename_column :beers, :taste, :description
  end
end
