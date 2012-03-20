# == Schema Information
#
# Table name: statuses
#
#  id         :integer         not null, primary key
#  status     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Status < ActiveRecord::Base
	has_many :campers
end
