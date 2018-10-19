class CreateVenta < ActiveRecord::Migration[5.2]
  def change
    create_table :venta do |t|
      t.datetime :fechaventa
      t.integer :cantidad
      t.integer :valorunidad
      t.integer :total
      t.string :donacion
      t.string :comprador
      t.references :detalleparametros, foreign_key: true
      t.references :redencions, foreign_key: true

      t.timestamps
    end
  end
end
