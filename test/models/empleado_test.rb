# == Schema Information
#
# Table name: empleados
#
#  id              :integer          not null, primary key
#  emple_nombre    :string
#  emple_ruc       :string
#  emple_direccion :string
#  emple_telefono  :string
#  emple_email     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class EmpleadoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
