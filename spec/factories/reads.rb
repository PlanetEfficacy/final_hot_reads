FactoryGirl.define do
  factory :read do
    title { Faker::Book.title }
    url { Faker::Internet.url('example.com') }
  end
end
