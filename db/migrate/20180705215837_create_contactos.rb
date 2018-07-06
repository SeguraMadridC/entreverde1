class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :correo
      t.string :comentario
      t.timestamps
    end
  end
end
