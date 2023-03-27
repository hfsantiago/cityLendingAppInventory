class Asset < ApplicationRecord
  belongs_to :asset_type

  def marca_modelo
    "#{marca} - #{modelo}"
  end
  def self.statuses
    [['Mantenimiento', 'maintenance'],['Disponible','available']]
  end
end
