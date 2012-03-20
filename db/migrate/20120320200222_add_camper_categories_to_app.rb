class AddCamperCategoriesToApp < ActiveRecord::Migration
  def change
  
    create_table "brands" do |t|
      t.string   "brand_name"
      
      t.timestamps
    end
    
    create_table "categories" do |t|
      t.string   "category_name"
      
      t.timestamps
    end
    
    create_table "engines" do |t|
      t.string   "engine_type"
      
      t.timestamps
    end

    create_table "maxprices" do |t|
      t.string   "max_price"
      
      t.timestamps
    end

    create_table "minprices" do |t|
      t.string   "min_price"
      
      t.timestamps
    end
    
    create_table "statuses" do |t|
      t.string   "status"
      
      t.timestamps
    end
    
    add_index "campers", ["brand_id"], :name => "index_campers_on_brand_id"
    add_index "campers", ["category_id"], :name => "index_campers_on_category_id"
  end
end
