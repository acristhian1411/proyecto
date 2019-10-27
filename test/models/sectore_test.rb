# == Schema Information
#
# Table name: sectores
#
#  id          :integer          not null, primary key
#  almacene_id :integer
#  sect_desc   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_sectores_on_almacene_id  (almacene_id)
#

require 'test_helper'

class SectoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
