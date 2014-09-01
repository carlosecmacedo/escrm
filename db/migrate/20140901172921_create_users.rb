class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :senha
      t.string :privilegio
      t.string :clientes
      t.boolean :admin

      t.timestamps
    end
  end
end
