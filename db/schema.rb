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

ActiveRecord::Schema.define(version: 20170519020729) do

  create_table "bets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "amount"
    t.bigint "player_id"
    t.bigint "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_bets_on_player_id"
    t.index ["round_id"], name: "index_bets_on_round_id"
  end

  create_table "jugador_rondas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "apuesta"
    t.bigint "jugador_id"
    t.bigint "ronda_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jugador_id"], name: "index_jugador_rondas_on_jugador_id"
    t.index ["ronda_id"], name: "index_jugador_rondas_on_ronda_id"
  end

  create_table "jugadors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nombre"
    t.integer "dinero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rondas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "numero"
    t.date "fecha"
    t.boolean "conservador"
    t.string "resultado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "number"
    t.datetime "dateTime"
    t.boolean "conservative"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bets", "players"
  add_foreign_key "bets", "rounds"
  add_foreign_key "jugador_rondas", "jugadors"
  add_foreign_key "jugador_rondas", "rondas"
end
