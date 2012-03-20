# == Schema Information
#
# Table name: categories
#
#  id            :integer         not null, primary key
#  category_name :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Category < ActiveRecord::Base
	has_many :campers
end
