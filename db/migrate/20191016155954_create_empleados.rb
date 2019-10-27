class CreateEmpleados < ActiveRecord::Migration[5.2]
  def change
    create_table :empleados do |t|
      t.string :emple_nombre
      t.string :emple_ruc
      t.string :emple_direccion
      t.string :emple_telefono
      t.string :emple_email

      t.timestamps
    end
  end
end
