FactoryBot.define do
  factory :recommend do
    place_name  {"温泉"}
    region_id   {"3"}
    city_id     {"7"}
    category_id {"5"}
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('app/assets/images/arrow_top.png'), filename: 'arrow_top.png')
    end
  end
end