class CreateAssetTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :asset_types do |t|
      t.string :nombre
      t.text :observaciones

      t.timestamps
    end
  end
end
