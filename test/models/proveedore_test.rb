# == Schema Information
#
# Table name: proveedores
#
#  id             :integer          not null, primary key
#  prov_nombre    :string
#  prov_ruc       :string
#  prov_direccion :string
#  prov_telefono  :string
#  prov_email     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ProveedoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
