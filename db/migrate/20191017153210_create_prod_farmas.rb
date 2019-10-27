class CreateProdFarmas < ActiveRecord::Migration[5.2]
  def change
    create_table :prod_farmas do |t|
      t.references :farmaco, foreign_key: true
      t.references :producto, foreign_key: true

      t.timestamps
    end
  end
end
