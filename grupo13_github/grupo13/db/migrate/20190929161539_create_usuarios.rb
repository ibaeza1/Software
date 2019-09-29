class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :mail
      t.string :profile
      t.string :adress
      t.text :pedidos_realizados
      t.text :restaurantes_favoritos


      t.timestamps
    end
  end
end
