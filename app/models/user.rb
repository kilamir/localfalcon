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

class User < ActiveRecord::Base
  validates :firstname, :presence   => true
                        :length     => { :maximum => 30 }
  validates :lastname,  :presence   => true
                        :length     => { :maximum => 30 }
  validates :email,     :presence   => true
                        :format     => { :with => email_regex }
                        :uniqueness => { :case_sensitive => false }
  validates :password,  :presence   => true
end
