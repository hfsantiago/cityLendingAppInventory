class CreateDeliveryCollectRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_collect_records do |t|
      t.references :employee, null: false, foreign_key: true
      t.date :fecha
      t.boolean :is_delivery
      t.string :nombre_recibe
      t.string :nombre_devuelve
      t.text :devolucion_observaciones
      t.text :devolucion_estado_equipo

      t.timestamps
    end
  end
end
