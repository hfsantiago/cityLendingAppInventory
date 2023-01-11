json.extract! working_order, :id, :asset_id, :fecha_hora_apertura, :fecha_hora_cierre, :id_empleado_tecnico, :diagnostico_notas, :url_imagenes, :created_at, :updated_at
json.url working_order_url(working_order, format: :json)
