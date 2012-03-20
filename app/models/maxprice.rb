# == Schema Information
#
# Table name: maxprices
#
#  id         :integer         not null, primary key
#  max_price  :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Maxprice < ActiveRecord::Base
	has_many :searches
end
