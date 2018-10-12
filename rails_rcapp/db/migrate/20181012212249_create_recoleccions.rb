class CreateRecoleccions < ActiveRecord::Migration[5.2]
  def change
    create_table :recoleccions do |t|
      t.integer :idusu_invitado
      t.integer :iddetalleparametro
      t.integer :idredencion
      t.integer :idpuntorecoleccion
      t.string :estado
      t.datetime :fecha
      t.integer :cantidad
      t.integer :idventa
      t.references :retousuario, foreign_key: true
      t.references :detalleparametro, foreign_key: true

      t.timestamps
    end
  end
end
