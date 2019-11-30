class AddDetailsToRestaurantes < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurantes, :imagen, :string
  end
end
