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
#
class Blog < ApplicationRecord
  belongs_to :user
end
