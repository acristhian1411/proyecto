class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :cliente_nombre
      t.string :cliente_ruc
      t.string :cliente_direccion
      t.string :cliente_telefono
      t.string :cliente_email

      t.timestamps
    end
  end
end
