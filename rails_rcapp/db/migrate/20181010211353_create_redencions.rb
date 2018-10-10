class CreateRedencions < ActiveRecord::Migration[5.2]
  def change
    create_table :redencions do |t|
      t.integer :idredencion
      t.integer :idusuario
      t.integer :idpremio
      t.datetime :fecharedencion
      t.integer :Cantidadpremio

      t.timestamps
    end
  end
end
