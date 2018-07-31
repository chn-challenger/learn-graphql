FactoryBot.define do
  factory :course do
    title { Faker::Lorem.word }
    description { Faker::Lorem.word }
  end
end
