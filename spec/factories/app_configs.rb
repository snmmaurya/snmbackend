FactoryBot.define do
  factory :app_config do
    key {Faker::Name.unique.name}
    value { "{}" }
    status { 'active' }
  end
end
