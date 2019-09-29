class CreatePlatos < ActiveRecord::Migration[5.2]
  def change
    create_table :platos do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :cantidad
      t.string :imagen
      t.integer :valoracion

      t.timestamps
    end
  end
end
