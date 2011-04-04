class RemoveLastMod < ActiveRecord::Migration
  def self.up
    remove_column :beers, :last_mod
    remove_column :breweries, :last_mod
    remove_column :categories, :last_mod
    remove_column :styles, :last_mod
  end

  def self.down
    add_column :beers, :last_mod, :datetime
    add_column :breweries, :last_mod, :datetime
    add_column :categories, :last_mod, :datetime
    add_column :styles, :last_mod, :datetime
  end
end
