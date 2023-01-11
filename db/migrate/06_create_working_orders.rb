class CreateWorkingOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :working_orders do |t|
      t.references :asset, null: false, foreign_key: true
      t.timestamp :fecha_hora_apertura
      t.timestamp :fecha_hora_cierre
      t.integer :id_empleado_tecnico
      t.text :diagnostico_notas
      t.string :url_imagenes
      t.timestamps
    end
  end
end
