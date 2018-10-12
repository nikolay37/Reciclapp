class CreateRedencions < ActiveRecord::Migration[5.2]
  def change
    create_table :redencions do |t|
      t.integer :idusuario
      t.integer :idpremio
      t.integer :fecharedencion
      t.datetime :Cantidadpremio
      t.integer :Cantidadpremio
      t.references :reto, foreign_key: true

      t.timestamps
    end
  end
end
