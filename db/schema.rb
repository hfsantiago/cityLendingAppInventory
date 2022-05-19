# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 4) do
  create_table "asset_types", force: :cascade do |t|
    t.string "nombre"
    t.text "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assets", force: :cascade do |t|
    t.string "marca"
    t.string "modelo"
    t.string "serial"
    t.string "url_factura"
    t.string "status"
    t.string "tecnologia_DD1"
    t.string "tecnologia_DD2"
    t.string "capacidad_DD1"
    t.string "capacidad_DD2"
    t.date "fecha_inicio_garantia"
    t.date "fecha_fin_garantia"
    t.text "observaciones"
    t.integer "asset_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_type_id"], name: "index_assets_on_asset_type_id"
  end

  create_table "delivery_collect_records", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.date "fecha"
    t.boolean "is_delivery"
    t.string "nombre_recibe"
    t.string "nombre_devuelve"
    t.text "devolucion_observaciones"
    t.text "devolucion_estado_equipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_delivery_collect_records_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "nombres_apellidos"
    t.integer "telefono"
    t.integer "celular"
    t.boolean "tecnico"
    t.string "position"
    t.string "email"
    t.integer "cedula"
    t.string "ciudad"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assets", "asset_types"
  add_foreign_key "delivery_collect_records", "employees"
end
