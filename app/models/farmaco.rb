# == Schema Information
#
# Table name: farmacos
#
#  id         :integer          not null, primary key
#  farma_desc :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Farmaco < ApplicationRecord
  validates :farma_desc, presence: true

end
