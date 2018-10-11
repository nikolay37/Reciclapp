class CreateRecoleccions < ActiveRecord::Migration[5.2]
  def change
    create_table :recoleccions do |t|
      t.integer :Idretousuario
      t.integer :idusu_invitado
      t.integer :iddetalleparametro
      t.integer :idredencion
      t.integer :idpuntorecoleccion
      t.string :estado
      t.datetime :fecha
      t.integer :cantidad

      t.timestamps
    end
  end
end
