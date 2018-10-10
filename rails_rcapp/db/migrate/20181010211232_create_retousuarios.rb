class CreateRetousuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :retousuarios do |t|
      t.integer :idreto
      t.integer :idusu_invitado
      t.integer :lema

      t.timestamps
    end
  end
end
