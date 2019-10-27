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

class Empleado < ApplicationRecord
  validates :emple_nombre, presence: true
  validates :emple_ruc, presence: true
  validates :emple_direccion, presence: true
  validates :emple_telefono, presence: true
  validates :emple_email, presence: true

end
