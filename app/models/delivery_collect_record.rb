class DeliveryCollectRecord < ApplicationRecord
  belongs_to :employee
  has_many :delivery_collect_record_assets

  accepts_nested_attributes_for :delivery_collect_record_assets
end
