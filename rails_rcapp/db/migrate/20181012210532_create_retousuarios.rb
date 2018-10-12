class CreateRetousuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :retousuarios do |t|
      t.string :lema
      t.references :reto, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
