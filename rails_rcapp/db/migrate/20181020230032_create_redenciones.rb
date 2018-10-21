class CreateRedenciones < ActiveRecord::Migration[5.2]
  def change
    create_table :redenciones do |t|
      t.integer :idusuario
      t.datetime :fecharedencion
      t.integer :Cantidadpremio
      t.integer :disponible
      t.string :nota
      t.references :detalleparametros, foreign_key: true

      t.timestamps
    end
  end
end
