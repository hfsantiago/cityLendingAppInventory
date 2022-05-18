json.extract! employee, :id, :nombres_apellidos, :telefono, :celular, :tecnico, :position, :email, :cedula, :ciudad, :direccion, :created_at, :updated_at
json.url employee_url(employee, format: :json)
