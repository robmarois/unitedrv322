class Special < ActiveRecord::Base

  attr_accessible :camper_id
  
  belongs_to :camper
end