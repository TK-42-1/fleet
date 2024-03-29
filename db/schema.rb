# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20110929200807) do

  create_table "drivers", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenances", :force => true do |t|
    t.string   "invoice"
    t.string   "date"
    t.integer  "milage"
    t.decimal  "cost",        :precision => 8, :scale => 2
    t.string   "serviced_by"
    t.string   "category"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "plate"
    t.string   "vin"
    t.text     "make"
    t.string   "model"
    t.integer  "year"
    t.text     "status"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
