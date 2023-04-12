FactoryBot.define do
  factory :theme do
    name { Faker::Lorem.word }
    image_link { Faker::LoremFlickr.image(size: "300x300", search_terms: ['lawyer']) }
    
  end
end