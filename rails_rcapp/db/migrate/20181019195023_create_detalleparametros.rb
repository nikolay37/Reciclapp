class CreateDetalleparametros < ActiveRecord::Migration[5.2]
  def change
    create_table :detalleparametros do |t|
      t.string :nombre
      t.references :parametros, foreign_key: true

      t.timestamps
    end
  end
end
