class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.string :celular
      t.string :email
      t.datetime :fechanacimiento
      t.string :direccion
      t.string :barrio
      t.string :edificio
      t.string :genero
      t.string :empresa
      t.string :clienteacueducto
      t.string :jac
      t.integer :idperfildetpar
      t.integer :idlocalidad
      t.string :clave

      t.timestamps
    end
  end
end
