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
require "test_helper"

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
