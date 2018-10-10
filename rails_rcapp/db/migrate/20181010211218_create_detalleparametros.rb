class CreateDetalleparametros < ActiveRecord::Migration[5.2]
  def change
    create_table :detalleparametros do |t|
      t.integer :iddetalleparametro
      t.integer :idparametro
      t.string :nombre

      t.timestamps
    end
  end
end
