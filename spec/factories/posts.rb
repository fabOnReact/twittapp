FactoryBot.define do
  factory :post do
    name { Faker::Name.name }
    message "This is a static message, maybe later I will set a dynamic message"
  end
end
