# == Schema Information
#
# Table name: rubros
#
#  id         :integer          not null, primary key
#  rubro_desc :string
#  rubro_iba  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rubro < ApplicationRecord
  validates :rubro_desc, presence: true
  validates :rubro_iba, presence: true
end
