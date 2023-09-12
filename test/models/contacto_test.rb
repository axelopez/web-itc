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
require "test_helper"

class ContactoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
