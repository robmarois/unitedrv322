# == Schema Information
#
# Table name: minprices
#
#  id         :integer         not null, primary key
#  min_price  :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Minprice < ActiveRecord::Base
	has_many :searches
end
