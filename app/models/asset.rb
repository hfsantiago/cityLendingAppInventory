class Asset < ApplicationRecord
  belongs_to :asset_type

  def marca_modelo
    "#{marca} - #{modelo}"
  end
  def self.statuses
    [['Mantenimiento', 'maintenance'],['Disponible','available']]
  end
  def status_str
    str = ""
    Asset.statuses.each do |item|
      if item[1] == self.status
      str = item[0]
      break
      end
    end
    str
  end
end
