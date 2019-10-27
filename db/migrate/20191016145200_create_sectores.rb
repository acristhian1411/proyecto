class CreateSectores < ActiveRecord::Migration[5.2]
  def change
    create_table :sectores do |t|
      t.references :almacene, foreign_key: true
      t.string :sect_desc

      t.timestamps
    end
  end
end
