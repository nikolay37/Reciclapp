json.extract! user, :id, :cedula, :nombre, :apellido, :celular, :email, :fechanacimiento, :direccion, :barrio, :edificio, :genero, :empresa, :clienteacueducto, :jac, :idperfildetpar, :idlocalidad, :clave, :created_at, :updated_at
json.url user_url(user, format: :json)
