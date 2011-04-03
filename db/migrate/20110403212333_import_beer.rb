class ImportBeer < ActiveRecord::Migration
  def self.up
    #beer = IO.readlines("db/migrate/data/beers.sql")
    #breweries = IO.readlines("db/migrate/data/breweries.sql")
    #geocodes = IO.readlines("db/migrate/data/geocodes.sql")
    #styles = IO.readlines("db/migrate/data/styles.sql")
    #categories = IO.readlines("db/migrate/data/categories.sql")

#    ActiveRecord::Base.establish_connection
#    ActiveRecord::Base.connection.execute(beer.to_s)
#    ActiveRecord::Base.connection.execute(breweries.to_s)
#    ActiveRecord::Base.connection.execute(geocodes.to_s)
#    ActiveRecord::Base.connection.execute(styles.to_s)
#    ActiveRecord::Base.connection.execute(categories.to_s)
#    execute styles.join

    create_table :breweries do|t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :code
      t.string :country
      t.string :phone
      t.string :website
      t.string :filepath
      t.text :description
      t.timestamps
      t.integer :add_user
      t.datetime :last_mod
    end

    create_table :brewery_geocodes do|t|
      t.integer :brewery_id
      t.float :latitude
      t.float :longitude
      t.string :accuracy
      t.timestamps
    end

    create_table :categories do|t|
      t.string :name
      t.timestamps
      t.datetime :last_mod
    end

    create_table :styles do |t|
      t.integer :category_id
      t.string :name
      t.timestamps
      t.datetime :last_mod
    end

    create_table :beers do|t|
      t.integer :brewery_id
      t.string :name
      t.integer :category_id
      t.integer :style_id
      t.float :abv
      t.float :ibu
      t.float :srm
      t.integer :upc
      t.string :filepath
      t.text :description
      t.integer :add_user
      t.datetime :last_mod
      t.timestamps
    end
  end

  def self.down
  end
end
