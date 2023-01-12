class CreateWorkingOrderPurchaseElements < ActiveRecord::Migration[7.0]
  def change
    create_table :working_order_purchase_elements do |t|
      t.references :working_order, null: false, foreign_key: true
      t.string :nombre_elemento
      t.integer :cantidad
      t.string :url_compra
      t.text :observaciones
      t.boolean :comprado
      t.date :fecha_solicitud
      t.date :fecha_compra

      t.timestamps
    end
  end
end
