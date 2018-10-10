class CreateMeta < ActiveRecord::Migration[5.2]
  def change
    create_table :meta do |t|
      t.integer :Idmeta
      t.integer :idusuario
      t.integer :iddetalleparametro
      t.integer :idreto
      t.datetime :Fechaexpiracion
      t.integer :cantidad

      t.timestamps
    end
  end
end
