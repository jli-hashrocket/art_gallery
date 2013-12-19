FactoryGirl.define do

  factory :style do
    name 'modern'
  end

  factory :artwork_type do
    name 'painting'
  end

  factory :collection do
    name 'Bear Fatalities Collection'
  end

  factory :customer do
    email 'maxpowers@uberawesome.com'
    phone_number '755-345-6897'
  end

  factory :favorite_collection do
    collection
    customer
  end

  factory :artist do
    first_name "Harry"
    last_name "Osborn"
    email "osborn@goblin.com"
    phone_no "555-673-8999"
    birthplace "New York, NY"
    style
  end

  factory :artwork do
    artist
    created_date '2013-12-08'
    available_date '2013-12-08'
    cost 900.54
    artwork_type
    available true
    sold true
    collection
  end

  factory :purchase do
    customer
    artwork
  end

end
