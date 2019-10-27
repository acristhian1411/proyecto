class CreateMovTipos < ActiveRecord::Migration[5.2]
  def change
    create_table :mov_tipos do |t|
      t.string :mov_desc
      t.boolean :mov_est

      t.timestamps
    end
  end
end
