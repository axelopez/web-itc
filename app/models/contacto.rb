# == Schema Information
#
# Table name: contactos
#
#  id         :bigint           not null, primary key
#  nombre     :string
#  email      :string
#  telefono   :string
#  mensaje    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contacto < ApplicationRecord
  validates :nombre, :email, :telefono, :mensaje, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  
end
