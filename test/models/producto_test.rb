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

require 'test_helper'

class ProductoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
