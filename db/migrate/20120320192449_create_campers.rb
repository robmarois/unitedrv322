class CreateCampers < ActiveRecord::Migration
  def change
    create_table :campers do |t|
      t.string   "headline"
      t.integer  "price_now"
      t.integer  "year"
      t.string   "length"
      t.string   "ac_units"
      t.string   "slide"
      t.text     "features"
      t.integer  "brand_id"
      t.integer  "mileage"
      t.integer  "category_id"
      t.string   "stock_number"
      t.integer  "model_id"
      t.boolean  "is_new",        :default => false
      t.string   "weight"
      t.integer  "status_id"
      t.integer  "engine_id"
      t.integer  "attachment_id"
      
      t.timestamps
    end
  end
end
