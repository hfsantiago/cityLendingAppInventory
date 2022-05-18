class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :nombres_apellidos
      t.integer :telefono
      t.integer :celular
      t.boolean :tecnico
      t.string :position
      t.string :email
      t.integer :cedula
      t.string :ciudad
      t.string :direccion

      t.timestamps
    end
  end
end
