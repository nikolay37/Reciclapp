class CreateRetousuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :retousuarios do |t|
      t.string :lema
      t.string :nota
      t.references :retos, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
