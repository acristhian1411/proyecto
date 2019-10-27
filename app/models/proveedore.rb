# == Schema Information
#
# Table name: proveedores
#
#  id             :integer          not null, primary key
#  prov_nombre    :string
#  prov_ruc       :string
#  prov_direccion :string
#  prov_telefono  :string
#  prov_email     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Proveedore < ApplicationRecord
  validates :prov_nombre, presence: true
  validates :prov_ruc, presence: true
  validates :prov_direccion, presence: true
  validates :prov_telefono, presence: true
  validates :prov_email, presence: true

end
