# == Schema Information
#
# Table name: users
#
#  id             :integer(4)      not null, primary key
#  firstname      :string(255)
#  lastname       :string(255)
#  username       :string(255)
#  password       :string(255)
#  site_id        :integer(4)
#  email          :string(255)
#  work_ph_num    :string(255)
#  cell_ph_num    :string(255)
#  fax_num        :string(255)
#  street_address :string(255)
#  city           :string(255)
#  state          :string(255)
#  zipcode        :integer(4)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
