FactoryBot.define do
  factory :question do
    association :theme
    question { Faker::Lorem.sentence }
    answer_1 { Faker::Lorem.sentence }
    answer_2 { Faker::Lorem.sentence }
    answer_3 { Faker::Lorem.sentence }
    answer_4 { Faker::Lorem.sentence }
    answer_5 { Faker::Lorem.sentence }

  end
end