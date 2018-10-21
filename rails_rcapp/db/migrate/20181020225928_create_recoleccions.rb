class CreateRecoleccions < ActiveRecord::Migration[5.2]
  def change
    create_table :recoleccions do |t|
      t.integer :idventa
      t.integer :iddetalleparametro
      t.integer :idredencion
      t.integer :idpuntorecoleccion
      t.string :estado
      t.datetime :fecha
      t.integer :cantidad
      t.integer :nota
      t.string :nota
      t.references :retousuarios, foreign_key: true
      t.references :detalleparametros, foreign_key: true

      t.timestamps
    end
  end
end
