# == Schema Information
#
# Table name: campers
#
#  id            :integer         not null, primary key
#  headline      :string(255)
#  price_now     :integer
#  year          :integer
#  length        :string(255)
#  ac_units      :string(255)
#  slide         :string(255)
#  features      :text
#  brand_id      :integer
#  mileage       :integer
#  category_id   :integer
#  stock_number  :string(255)
#  model_id      :integer
#  is_new        :boolean         default(FALSE)
#  weight        :string(255)
#  status_id     :integer
#  engine_id     :integer
#  attachment_id :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Camper < ActiveRecord::Base

  attr_accessible :headline, :price_now, :year, :length, :ac_units, 
                  :slide, :features, :brand_id, :mileage, :stock_number, 
                  :category_id, :is_new, :model_id, :status_id, :weight, 
                  :engine_id, :attachments_attributes, :attachment_id, 
                  :brand_name, :permalink
  
  validates :price_now, :presence => true 
	validates :year, :presence => true
	validates :headline, :presence => true, :length => {:maximum => 100}
	
	belongs_to :brand
	belongs_to :category, :foreign_key => "category_id"
	belongs_to :status
	belongs_to :engine
	
	has_many :specials
	has_many :attachments, :as => :attachable, dependent: :destroy
  has_many :prospects
	
	
	after_save :set_photo
	
	accepts_nested_attributes_for :attachments, :reject_if=> proc {|attributes| attributes[:file].blank?}, :allow_destroy => true
	
  def to_param
    "#{id}-#{permalink}"
  end

	def brand_name
    brand.try(:brand_name)
  end
  
  def brand_name=(brand_name)
    self.brand = Brand.find_or_create_by_brand_name(brand_name) if brand_name.present?
  end
	
	private
    def set_photo
      if attachment_id.nil?
        if !Attachment.first.nil? 
        photo = self.attachments.first.id
        self.update_attributes(:attachment_id => photo)
        end
      end
    end
end
