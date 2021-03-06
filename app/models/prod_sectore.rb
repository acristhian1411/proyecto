# == Schema Information
#
# Table name: prod_sectores
#
#  id          :integer          not null, primary key
#  sectore_id  :integer
#  producto_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  idx_prod_sectores                   (producto_id,id) UNIQUE
#  index_prod_sectores_on_producto_id  (producto_id)
#  index_prod_sectores_on_sectore_id   (sectore_id)
#

class ProdSectore < ApplicationRecord
  belongs_to :sectore
  belongs_to :producto
end
