# == Schema Information
#
# Table name: prod_farmas
#
#  id          :integer          not null, primary key
#  farmaco_id  :integer
#  producto_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_prod_farmas_on_farmaco_id   (farmaco_id)
#  index_prod_farmas_on_producto_id  (producto_id)
#

class ProdFarma < ApplicationRecord
  
  belongs_to :farmaco
  belongs_to :producto
end
