require 'faker'
FactoryGirl.define do
  factory :contact do |f|
    f.firstname { Faker::Name.first_name }
    f.lastname { Faker::Name.last_name }
    f.email { Faker::Internet.email }
    f.content 'This is content'
  end
end