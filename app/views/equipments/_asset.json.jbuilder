json.extract! equipment, :id, :marca, :modelo, :serial, :url_factura, :status, :tecnologia_DD1, :tecnologia_DD2, :capacidad_DD1, :capacidad_DD2, :fecha_inicio_garantia, :fecha_fin_garantia, :observaciones, :asset_type_id, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)
