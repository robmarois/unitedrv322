class Prospect < ActiveRecord::Base

	attr_accessible :email, :name, :phone, :comments, :camper_id

  belongs_to :camper, :foreign_key => "camper_id"
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,  :presence => true,
  				    :length   => { :maximum => 40 }
  validates :email, :presence => true,	
				    :format => { :with => email_regex }
				    

end
