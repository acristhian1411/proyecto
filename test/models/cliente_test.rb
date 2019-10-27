# == Schema Information
#
# Table name: clientes
#
#  id                :integer          not null, primary key
#  cliente_nombre    :string
#  cliente_ruc       :string
#  cliente_direccion :string
#  cliente_telefono  :string
#  cliente_email     :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
