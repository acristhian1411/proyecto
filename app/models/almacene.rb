# == Schema Information
#
# Table name: almacenes
#
#  id         :integer          not null, primary key
#  alma_desc  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Almacene < ApplicationRecord
  validates :alma_desc, presence: true
end
