class CreateAlmacenes < ActiveRecord::Migration[5.2]
  def change
    create_table :almacenes do |t|
      t.string :alma_desc

      t.timestamps
    end
  end
end
