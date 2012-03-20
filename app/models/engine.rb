# == Schema Information
#
# Table name: engines
#
#  id          :integer         not null, primary key
#  engine_type :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Engine < ActiveRecord::Base
	has_many :campers
end
