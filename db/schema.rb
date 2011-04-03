# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20110403212333) do

  create_table "beers", :force => true do |t|
    t.integer  "brewery_id"
    t.string   "name"
    t.integer  "category_id"
    t.integer  "style_id"
    t.float    "abv"
    t.float    "ibu"
    t.float    "srm"
    t.integer  "upc"
    t.string   "filepath"
    t.text     "description"
    t.integer  "add_user"
    t.datetime "last_mod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breweries", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "code"
    t.string   "country"
    t.string   "phone"
    t.string   "website"
    t.string   "filepath"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "add_user"
    t.datetime "last_mod"
  end

  create_table "brewery_geocodes", :force => true do |t|
    t.integer  "brewery_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "accuracy"
=======
ActiveRecord::Schema.define(:version => 20110403203245) do

  create_table "reviews", :force => true do |t|
    t.integer  "user_id"
    t.integer  "overall_rating"
    t.string   "comment"
>>>>>>> d903be038d6d48e791145471718aed66e20690ca
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_mod"
  end

  create_table "styles", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_mod"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
