# == Schema Information
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  question   :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Question < ActiveRecord::Base

  attr_accessible :name, :email, :phone, :question
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, length: { maximum: 20}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, :with=>VALID_EMAIL_REGEX, :message=>"Valid email required"
  validates :question, presence: true, length: { maximum: 1000 }
  
end
