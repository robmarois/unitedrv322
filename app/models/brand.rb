# == Schema Information
#
# Table name: brands
#
#  id         :integer         not null, primary key
#  brand_name :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Brand < ActiveRecord::Base
	has_many :campers
end
