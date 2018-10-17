class CreateRetos < ActiveRecord::Migration[5.2]
  def change
    create_table :retos do |t|
      t.integer :nombre
      t.string :patrocinadox
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
