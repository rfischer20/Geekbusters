FactoryGirl.define do
  factory :geekbuster do
    first_name "Peter"
    last_name "Venkman"
  end
  
  factory :geekbuster_team, :parent => :geekbuster do
    association :team
  end
  
  factory :address do
    address_line1 "1200 W. Addison St."
    address_line2 "Apt. 1"
    city "Chicago"
    state "IL"
    zipcode "60613"
    association :geekbuster
  end
  
  factory :team do
    name "League of 7 Ex's"
  end
end