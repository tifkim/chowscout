FactoryGirl.define do

  factory :user do
    sequence :email do |n|
              "timinki#{n}@gmail.com"
    end
    password              "123456789"
    password_confirmation "123456789"
  end

  factory :place do
    name "Houston"
    address "6000 Main St, Houston, TX"
    description "It's a place"
    latitude(29.635479)
    longitude(-95.493969)
    association :user
  end

  factory :comment do
    message "Testing ratings"
    rating "1_star"
    association :user
    association :place
  end

end
