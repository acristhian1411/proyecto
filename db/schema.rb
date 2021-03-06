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

ActiveRecord::Schema.define(version: 2019_10_21_230713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "almacenes", force: :cascade do |t|
    t.string "alma_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "cliente_nombre"
    t.string "cliente_ruc"
    t.string "cliente_direccion"
    t.string "cliente_telefono"
    t.string "cliente_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "emple_nombre"
    t.string "emple_ruc"
    t.string "emple_direccion"
    t.string "emple_telefono"
    t.string "emple_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmacos", force: :cascade do |t|
    t.string "farma_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string "lab_desc"
    t.boolean "lab_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mov_tipos", force: :cascade do |t|
    t.string "mov_desc"
    t.boolean "mov_est"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prod_farmas", force: :cascade do |t|
    t.bigint "farmaco_id"
    t.bigint "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmaco_id"], name: "index_prod_farmas_on_farmaco_id"
    t.index ["producto_id"], name: "index_prod_farmas_on_producto_id"
  end

  create_table "prod_sectores", force: :cascade do |t|
    t.bigint "sectore_id"
    t.bigint "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id", "id"], name: "idx_prod_sectores", unique: true
    t.index ["producto_id"], name: "index_prod_sectores_on_producto_id"
    t.index ["sectore_id"], name: "index_prod_sectores_on_sectore_id"
  end

  create_table "productos", force: :cascade do |t|
    t.bigint "laboratorio_id"
    t.bigint "rubro_id"
    t.string "prod_desc"
    t.float "prod_precio"
    t.boolean "prod_active"
    t.string "prod_bcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laboratorio_id"], name: "index_productos_on_laboratorio_id"
    t.index ["rubro_id"], name: "index_productos_on_rubro_id"
  end

  create_table "proveedores", force: :cascade do |t|
    t.string "prov_nombre"
    t.string "prov_ruc"
    t.string "prov_direccion"
    t.string "prov_telefono"
    t.string "prov_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rubros", force: :cascade do |t|
    t.string "rubro_desc"
    t.integer "rubro_iba"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectores", force: :cascade do |t|
    t.bigint "almacene_id"
    t.string "sect_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["almacene_id"], name: "index_sectores_on_almacene_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "prod_farmas", "farmacos"
  add_foreign_key "prod_farmas", "productos"
  add_foreign_key "prod_sectores", "productos"
  add_foreign_key "prod_sectores", "sectores"
  add_foreign_key "productos", "laboratorios"
  add_foreign_key "productos", "rubros"
  add_foreign_key "sectores", "almacenes"
end
