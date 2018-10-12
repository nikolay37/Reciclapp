class CreateMeta < ActiveRecord::Migration[5.2]
  def change
    create_table :meta do |t|
      t.datetime :fechaexpiracion
      t.integer :cantidad
      t.references :retos, foreign_key: true
      t.references :detalleparametros, foreign_key: true

      t.timestamps
    end
  end
end
