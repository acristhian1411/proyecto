# == Schema Information
#
# Table name: clientes
#
#  id                :integer          not null, primary key
#  cliente_nombre    :string
#  cliente_ruc       :string
#  cliente_direccion :string
#  cliente_telefono  :string
#  cliente_email     :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Cliente < ApplicationRecord
  validates :cliente_nombre, presence: true
  validates :cliente_ruc, presence: true
  validates :cliente_direccion, presence: true
  validates :cliente_telefono, presence: true
  validates :cliente_email, presence: true

end
