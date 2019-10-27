# == Schema Information
#
# Table name: productos
#
#  id             :integer          not null, primary key
#  laboratorio_id :integer
#  rubro_id       :integer
#  prod_desc      :string
#  prod_precio    :float
#  prod_active    :boolean
#  prod_bcode     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_productos_on_laboratorio_id  (laboratorio_id)
#  index_productos_on_rubro_id        (rubro_id)
#

class Producto < ApplicationRecord
  validates :rubro_id, presence: true
  validates :laboratorio_id, presence: true
  validates :prod_desc, presence: true
  validates :prod_precio, presence: true

  belongs_to :laboratorio
  belongs_to :rubro


end
