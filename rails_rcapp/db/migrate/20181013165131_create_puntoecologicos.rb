class CreatePuntoecologicos < ActiveRecord::Migration[5.2]
  def change
    create_table :puntoecologicos do |t|
      t.decimal :ubicacionx
      t.decimal :ubicaciony
      t.string :nombre
      t.string :idresponsable
      t.datetime :fechainicio
      t.datetime :fechacierre
      t.references :detalleparametros, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
