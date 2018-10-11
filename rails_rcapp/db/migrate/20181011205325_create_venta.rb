class CreateVenta < ActiveRecord::Migration[5.2]
  def change
    create_table :venta do |t|
      t.integer :iddetalleparametro
      t.integer :idredencion
      t.datetime :fechaventa
      t.integer :cantidad
      t.integer :valorunidad
      t.integer :total
      t.string :donacion

      t.timestamps
    end
  end
end
