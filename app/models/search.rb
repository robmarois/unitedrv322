class Search < ActiveRecord::Base
  
  
  def campers
    @campers ||= find_campers
  end
  
  
private
  def find_campers
  
		  
	  campers = Camper.order("price_now DESC")

    keyword_split = keywords.split(' ')
    	
	  keyword_split.each do |word|
    	campers = campers.where("headline ILIKE ?", "%#{word}%")
    end
    
    # campers = campers.where(brand_id: brand_id) if brand_id.present?
    campers = campers.where(category_id: category_id) if category_id.present?
    # campers = campers.where("price_now >= ?", (min_price_id * 10000 -10000)) if min_price_id.present?
    # campers = campers.where("price_now <= ?", max_price_id * 10000) if max_price_id.present?
    # campers = campers.where("is_new == ?", is_new) if is_new.present?
     campers
  end
end
