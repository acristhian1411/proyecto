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

class Sectore < ApplicationRecord
  validates :sect_desc, presence: true
  validates :almacene_id, presence: true

  belongs_to :almacene
end
