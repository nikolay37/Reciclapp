class CreateParametros < ActiveRecord::Migration[5.2]
  def change
    create_table :parametros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
