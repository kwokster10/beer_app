class ChangeOriginColumn < ActiveRecord::Migration
  def change
    rename_column :beers, :origin, :brewery
  end
end
