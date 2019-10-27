# == Schema Information
#
# Table name: mov_tipos
#
#  id         :integer          not null, primary key
#  mov_desc   :string
#  mov_est    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MovTipo < ApplicationRecord
end
