# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
ActiveRecord::Base.connection.execute('truncate table categories')
ActiveRecord::Base.connection.execute('truncate table breweries')
ActiveRecord::Base.connection.execute('truncate table styles')
ActiveRecord::Base.connection.execute('truncate table beers')
ActiveRecord::Base.connection.execute('truncate table brewery_geocodes')

ActiveRecord::Base.establish_connection
categories = IO.readlines("db/migrate/data/categories_ins.sql")
breweries = IO.readlines("db/migrate/data/breweries_ins.sql")
styles = IO.readlines("db/migrate/data/styles_ins.sql")
beers = IO.readlines("db/migrate/data/beers_ins.sql")
beers2 = IO.readlines("db/migrate/data/beers_ins2.sql")
geocodes = IO.readlines("db/migrate/data/geocodes_ins.sql")

ActiveRecord::Base.connection.execute(categories.join)
ActiveRecord::Base.connection.execute(breweries.join)
ActiveRecord::Base.connection.execute(styles.join)
ActiveRecord::Base.connection.execute(beers.join)
ActiveRecord::Base.connection.execute(beers2.join)
ActiveRecord::Base.connection.execute(geocodes.join)
