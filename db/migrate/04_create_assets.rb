class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :marca
      t.string :modelo
      t.string :serial
      t.string :url_factura
      t.string :status
      t.string :tecnologia_DD1
      t.string :tecnologia_DD2
      t.string :capacidad_DD1
      t.string :capacidad_DD2
      t.date :fecha_inicio_garantia
      t.date :fecha_fin_garantia
      t.text :observaciones
      t.references :asset_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
