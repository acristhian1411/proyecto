# == Schema Information
#
# Table name: laboratorios
#
#  id         :integer          not null, primary key
#  lab_desc   :string
#  lab_active :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Laboratorio < ApplicationRecord
  validates :lab_desc, presence: true

  scope :inactivos, -> {
    where('lab_active != ?', true)
  }
  # Todos los activos
    scope :activos, -> {
    where(:lab_active => true)
}

end
