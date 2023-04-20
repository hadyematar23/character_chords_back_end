FactoryBot.define do
  factory :theme do
    name { Faker::Lorem.word }
    title { Faker::Lorem.sentence(word_count: 3) }
    image_link { Faker::LoremFlickr.image(size: "300x300", search_terms: ['lawyer']) }
    s3_key { Faker::Alphanumeric.alphanumeric(number: 10) }
  end
end
