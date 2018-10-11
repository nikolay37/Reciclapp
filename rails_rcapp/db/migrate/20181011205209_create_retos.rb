class CreateRetos < ActiveRecord::Migration[5.2]
  def change
    create_table :retos do |t|
      t.integer :idusuario_origina
      t.string :nombre

      t.timestamps
    end
  end
end
