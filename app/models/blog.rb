# == Schema Information
#
# Table name: blogs
#
#  id          :bigint           not null, primary key
#  titulo      :string
#  contenido   :text
#  estado      :string
#  comentarios :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  descripcion :string
#
class Blog < ApplicationRecord
  belongs_to :user
  validates :titulo, presence: true
  validates :contenido, presence: true
  has_one_attached :imagen
  validates :imagen, presence: false, blob: { content_type: :image }

end
