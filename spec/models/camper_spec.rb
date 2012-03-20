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

require 'spec_helper'

describe Camper do
  before do
    @camper = Camper.new(headline: "New Camper", 
                         price_now: 16000,
                         year: 2008,
                         length: "16",
                         ac_units: "1 rear",
                         slide: "1 slide",
                         features: "this is the features list",
                         brand_id: 1,
                         mileage: 30000,
                         category_id: "1",
                         stock_number: "abc-124",
                         model_id: "1",
                         is_new: false,
                         weight: "2000 lbs",
                         status_id: 1,
                         engine_id: 1)
  end

  subject { @camper }

  it { should respond_to(:headline) }
  it { should respond_to(:price_now) }
  it { should respond_to(:year) }
  it { should respond_to(:length) }
  it { should respond_to(:ac_units) }
  it { should respond_to(:slide) }
  it { should respond_to(:features) }
  it { should respond_to(:brand_id) }
  it { should respond_to(:mileage) }
  it { should respond_to(:category_id) }
  it { should respond_to(:stock_number) }
  it { should respond_to(:model_id) }
  it { should respond_to(:is_new) }
  it { should respond_to(:weight) }
  it { should respond_to(:status_id) }
  it { should respond_to(:engine_id) }
  
  describe "when headline is not present" do
    before { @camper.headline = " " }
    it { should_not be_valid }
  end
  
  describe "when price is not present" do
    before { @camper.price_now = nil }
    it { should_not be_valid }
  end
  
  describe "when year is not present" do
    before { @camper.year = nil }
    it { should_not be_valid }
  end
  
end
