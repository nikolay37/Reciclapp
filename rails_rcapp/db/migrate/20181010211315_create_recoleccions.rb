class CreateRecoleccions < ActiveRecord::Migration[5.2]
  def change
    create_table :recoleccions do |t|
      t.integer :idrecoleccion
      t.integer :Idretousuario
      t.integer :idusu_invitado
      t.integer :iddetalleparametro
      t.integer :idredencion
      t.integer :idpuntorecoleccion
      t.string :Estado
      t.datetime :Fecha
      t.integer :Cantidad

      t.timestamps
    end
  end
end
