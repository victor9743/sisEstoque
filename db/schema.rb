# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_13_010055) do

  create_table "estoques", force: :cascade do |t|
    t.integer "qtdentrada", null: false
    t.integer "qtdsaida", null: false
    t.datetime "dataentrada", null: false
    t.datetime "datasaida", null: false
    t.float "valorentrada", null: false
    t.float "valorsaida", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pessoafisicas", force: :cascade do |t|
    t.string "nome", null: false
    t.string "cpf", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pessoajuridicas", force: :cascade do |t|
    t.string "nome", null: false
    t.string "cnpj"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nomeproduto", null: false
    t.datetime "dtavalidade", null: false
    t.string "codbarras", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipoprodutos", force: :cascade do |t|
    t.string "nomeproduto", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
