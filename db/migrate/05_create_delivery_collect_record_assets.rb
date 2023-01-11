class CreateDeliveryCollectRecordAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :delivery_collect_record_assets do |t|
      t.references :delivery_collect_record, null: false, foreign_key: true, index: {name: 'index_dcra_on_delivery_collect_record_id'}
      t.references :asset, null: false, foreign_key: true

      t.timestamps
    end
  end
end
