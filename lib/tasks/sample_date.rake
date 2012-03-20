namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_users
    make_campers
    make_brands
    make_categories
    make_sold_status
    make_minprice
    make_maxprice
    make_engine_type
  end
end


def make_users
  admin = User.create!(:name => "Rob Marois",
                       :email => "rmarois@example.com",
                       :password => "foobar",
                       :password_confirmation => "foobar")
  admin.toggle!(:admin)
  admin2 = User.create!(:name => "Kim",
                       :email => "ksgilley09@yahoo.com",
                       :password => "foobar",
                       :password_confirmation => "foobar")
  admin2.toggle!(:admin)
  
end

def make_campers
  
	  camper = Camper.create!(:headline => "2008 GULF STREAM GULF BREEZE 26TRS",
                           :price_now => 45300,
                           :year => 2008,
                           :length => 26,
                           :ac_units => 1,
                           :slide => 2,
                           :brand_id => 1,
                           :features => "2008 GULF STREAM GULF BREEZE, 26TRS, ULTRA LITE WEIGHT Fiberglass Exterior Rear Queen Slide Out Front Bunk Room with 4 Bunks Sleeper Sofa Dinette Booth Stabilizer Jacks Awning Central Heat/Air Stereo Microwave 2-Door Refrigerator LIKE NEW! ONE OWNER! LOCAL TRADE! OUR PRICE $13,900.00",
                           :mileage => 12000,
                           :stock_number => "40 EVS",
                           :category_id => 1,
                           :weight => 2000,
                           :status_id => 1,
                           :engine_id => 1)
                           
    camper2 = Camper.create!(:headline => "ONLY USED TWICE! ONE OWNER! - $5,500, ROCKWOOD 2290 FREEDOM POPUP",
                           :price_now => 5500,
                           :year => 2006,
                           :length => 23,
                           :ac_units => "1 air unit",
                           :slide => 0,
                           :brand_id => 1,
                           :features => "2006 ROCKWOOD 2290 FREEDOM POPUP AIR, FURNACE, REFRIGERATOR, COOK TOP, SINK, KING BED, QUEEN BED, SOFA, DINETTE, AWNING, OUTSIDE GRILL, LARGE SLIDE OUT STORAGE TRAY WITH BOTH SIDE ACCESS, WEIGHS 2,019 POUNDS. ONE OWNER - LOCAL TRADE ONLY USED TWICE! LIKE NEW INSIDE! - NICE UNIT! OUR PRICE $5,500",
                           :mileage => 0,
                           :stock_number => "BNC9043",
                           :category_id => 7,
                           :weight => 2019,
                           :status_id => 1,
                           :engine_id => 3)
        
    camper3 = Camper.create!(:headline => "AMERICAN EAGLE - CUMMINS DIESEL",
                       :price_now => 35600,
                       :year => 1998,
                       :length => 40,
                       :ac_units => 1,
                       :slide => 2,
                       :brand_id => 1,
                       :features => "1998 AMERICAN EAGLE 40 Evs, 77K, Large Slide 7.5 Onan Quite Generator 2 Central Air Units 2 LP Furnaces Washer/Dryer Satellite, TV's Side by Side Fridge Microwave, Ice Maker Power Inverter Leather Sofas Corian Counter Tops, Ceramic Tile Cedar Closets Glass Walk-in Shower with Seat Alloy Wheels Awning/Window Awnings, Slide Cover Spartan Chassis Air Ride, Air Brake, PAC Brake Non-Smoker WELL-MAINTAINED! EXTREMELY CLEAN! NEW CARPET! READY TO GO! A MUST SEE! RETAILS FOR $63,500 OUR PRICE - BELOW WHOLESALE AT $52,900.00",
                       :mileage => 77000,
                       :stock_number => "40 EVS",
                       :category_id => 1,
                       :weight => 2000,
                       :status_id => 1,
                       :engine_id => 1)
end

def make_brands
  brand = Brand.create!(:brand_name => "Fleetwood")
  brand2 = Brand.create!(:brand_name => "Gulfstream")
  brand3 = Brand.create!(:brand_name => "Rockwood")
end

def make_categories
  category = Category.create!(:category_name => "Class A")
  category2 = Category.create!(:category_name => "Class B")
  category3 = Category.create!(:category_name => "Class C")
  category4 = Category.create!(:category_name => "Travel Trailer")
  category5 = Category.create!(:category_name => "Fifth Wheel")
  category6 = Category.create!(:category_name => "Toy Hauler")
  category7 = Category.create!(:category_name => "Folding Camper")
  category8 = Category.create!(:category_name => "Truck Camper")
  category9 = Category.create!(:category_name => "Park Model")
end

def make_sold_status
  sold = Status.create!(:status => "Available")
  sold2 = Status.create!(:status => "Sale Pending")
  sold3 = Status.create!(:status => "Sold")
end

def make_minprice
  sold = Minprice.create!(:min_price => "$0")
  sold2 = Minprice.create!(:min_price => "$10,000")
  sold3 = Minprice.create!(:min_price => "$20,000")
  sold4 = Minprice.create!(:min_price => "$30,000")
  sold5 = Minprice.create!(:min_price => "$40,000")
  sold6 = Minprice.create!(:min_price => "$50,000")
  sold7 = Minprice.create!(:min_price => "$60,000")
  sold8 = Minprice.create!(:min_price => "$70,000")
  sold9 = Minprice.create!(:min_price => "$80,000")
  sold10 = Minprice.create!(:min_price => "$90,000")
end

def make_maxprice
  sold = Maxprice.create!(:max_price => "$10,000")
  sold2 = Maxprice.create!(:max_price => "$20,000")
  sold3 = Maxprice.create!(:max_price => "$30,000")
  sold4 = Maxprice.create!(:max_price => "$40,000")
  sold5 = Maxprice.create!(:max_price => "$50,000")
  sold6 = Maxprice.create!(:max_price => "$60,000")
  sold7 = Maxprice.create!(:max_price => "$70,000")
  sold8 = Maxprice.create!(:max_price => "$80,000")
  sold9 = Maxprice.create!(:max_price => "$90,000")
  sold10 = Maxprice.create!(:max_price => "$100,000")
end

def make_engine_type
  engine = Engine.create!(:engine_type => "Diesel")
  engine2 = Engine.create!(:engine_type => "Gas")
  engine3 = Engine.create!(:engine_type => "None")
end