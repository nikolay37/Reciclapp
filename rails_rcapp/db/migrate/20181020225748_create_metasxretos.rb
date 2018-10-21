class CreateMetasxretos < ActiveRecord::Migration[5.2]
  def change
    create_table :metasxretos do |t|
      t.datetime :fechaexpiracion
      t.integer :cantidad
      t.string :nota
      t.references :retos, foreign_key: true
      t.references :detalleparametros, foreign_key: true

      t.timestamps
    end
  end
end
