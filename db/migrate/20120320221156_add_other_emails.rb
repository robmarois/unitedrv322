class AddOtherEmails < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string   :name
      t.string   :email
      t.string   :phone
      t.text     :comments
      t.integer  :camper_id

      t.timestamps
    end
    
    create_table :subscribers do |t|
      t.string   :name
      t.string   :email

      t.timestamps
    end
    
    create_table :searches do |t|
      t.string   :keywords
      t.integer  :brand_id
      t.integer  :min_price_id
      t.integer  :max_price_id
      t.integer  :type_id
      t.integer  :category_id
      t.integer  :sort_by_id
      t.boolean  :is_new,       :default => false
      
      t.timestamps
    end
  
    create_table :specials do |t|
      t.integer  :camper_id
      
      t.timestamps
    end   
  end
end
