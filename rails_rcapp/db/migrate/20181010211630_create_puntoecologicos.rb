class CreatePuntoecologicos < ActiveRecord::Migration[5.2]
  def change
    create_table :puntoecologicos do |t|
      t.integer :idpuntoecologico
      t.decimal :Ubicacionx
      t.decimal :Ubicaciony
      t.string :Nombre
      t.integer :idresponsable
      t.datetime :Fechainicio
      t.datetime :Fechacierre

      t.timestamps
    end
  end
end
