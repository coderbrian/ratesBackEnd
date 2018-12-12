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
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_12_12_075032) do
=======
ActiveRecord::Schema.define(version: 2018_12_12_162316) do
>>>>>>> 153819342b20a2eb14323152742371c9f7a9d963

  create_table "currencies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "currency_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
<<<<<<< HEAD
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "market_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
    t.bigint "base_currency_id"
    t.bigint "quoted_currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_currency_id"], name: "index_markets_on_base_currency_id"
    t.index ["quoted_currency_id"], name: "index_markets_on_quoted_currency_id"
  end

  create_table "rates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "market_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_rates_on_market_id"
  end

  add_foreign_key "markets", "currencies", column: "base_currency_id"
  add_foreign_key "markets", "currencies", column: "quoted_currency_id"
  add_foreign_key "rates", "markets"
>>>>>>> 153819342b20a2eb14323152742371c9f7a9d963
end
