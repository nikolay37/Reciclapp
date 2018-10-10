class CreateVenta < ActiveRecord::Migration[5.2]
  def change
    create_table :venta do |t|
      t.integer :idventas
      t.integer :idpuntoecologico
      t.integer :iddetalleparametro
      t.datetime :fechaventa
      t.integer :cantidad
      t.integer :valor
      t.string :donacion

      t.timestamps
    end
  end
end
