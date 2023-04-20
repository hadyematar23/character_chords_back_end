FactoryBot.define do
  factory :character do
    name { Faker::Name.name }
    good_min { Faker::Number.between(from: 0.0, to: 1.0) }
    good_max { Faker::Number.between(from: 0.0, to: 1.0) }
    lawful_min { Faker::Number.between(from: 0.0, to: 1.0) }
    lawful_max { Faker::Number.between(from: 0.0, to: 1.0) }
    description { Faker::Lorem.sentence }
    theme
    url { Faker::Internet.url }
    alignment { Faker::Number.between(from: 1, to: 9) }
    s3key { Faker::Alphanumeric.alphanumeric(number: 10) }
  end
end
