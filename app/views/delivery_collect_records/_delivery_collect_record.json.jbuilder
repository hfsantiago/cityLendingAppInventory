json.extract! delivery_collect_record, :id, :employee_id, :fecha, :is_delivery, :nombre_recibe, :nombre_devuelve, :devolucion_observaciones, :devolucion_estado_equipo, :created_at, :updated_at
json.url delivery_collect_record_url(delivery_collect_record, format: :json)
