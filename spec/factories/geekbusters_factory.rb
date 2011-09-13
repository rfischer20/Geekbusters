FactoryGirl.define do
  factory :geekbuster do
    first_name "Peter"
    last_name "Venkman"
    skills ["rails", "mongodb", "html"]
  end
  
  factory :geekbuster_team, :parent => :geekbuster do
    association :team
  end
  
  factory :address do
    address_line1 "1060 West Addison St."
    address_line2 "Wrigley Field"
    city "Chicago"
    state "IL"
    zipcode "60613"
    association :addressable, :factory => :geekbuster
  end
  
  factory :team do
    name "League of 7 Ex's"
  end
end