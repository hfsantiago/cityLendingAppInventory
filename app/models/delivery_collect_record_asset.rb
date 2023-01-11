class DeliveryCollectRecordAsset < ApplicationRecord
  belongs_to :delivery_collect_record
  belongs_to :asset
end
