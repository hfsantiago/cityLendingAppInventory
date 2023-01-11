class CreateWorkingOrderActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :working_order_activities do |t|
      t.references :working_order, null: false, foreign_key: true
      t.text :observaciones
      t.string :id_orden_servicio
      t.datetime :fecha_hora

      t.timestamps
    end
  end
end
