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

ActiveRecord::Schema[7.0].define(version: 8) do
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

  create_table "delivery_collect_record_assets", force: :cascade do |t|
    t.integer "delivery_collect_record_id", null: false
    t.integer "asset_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_delivery_collect_record_assets_on_asset_id"
    t.index ["delivery_collect_record_id"], name: "index_dcra_on_delivery_collect_record_id"
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

  create_table "working_order_activities", force: :cascade do |t|
    t.integer "working_order_id", null: false
    t.text "observaciones"
    t.string "id_orden_servicio"
    t.datetime "fecha_hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["working_order_id"], name: "index_working_order_activities_on_working_order_id"
  end

  create_table "working_order_purchase_elements", force: :cascade do |t|
    t.integer "working_order_id", null: false
    t.string "nombre_elemento"
    t.integer "cantidad"
    t.string "url_compra"
    t.text "observaciones"
    t.boolean "comprado"
    t.date "fecha_solicitud"
    t.date "fecha_compra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["working_order_id"], name: "index_working_order_purchase_elements_on_working_order_id"
  end

  create_table "working_orders", force: :cascade do |t|
    t.integer "asset_id", null: false
    t.datetime "fecha_hora_apertura", precision: nil
    t.datetime "fecha_hora_cierre", precision: nil
    t.integer "id_empleado_tecnico"
    t.text "diagnostico_notas"
    t.string "url_imagenes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_working_orders_on_asset_id"
  end

  add_foreign_key "assets", "asset_types"
  add_foreign_key "delivery_collect_record_assets", "assets"
  add_foreign_key "delivery_collect_record_assets", "delivery_collect_records"
  add_foreign_key "delivery_collect_records", "employees"
  add_foreign_key "working_order_activities", "working_orders"
  add_foreign_key "working_order_purchase_elements", "working_orders"
  add_foreign_key "working_orders", "assets"
end
