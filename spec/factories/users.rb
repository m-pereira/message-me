FactoryBot.define do
  factory :user do
    username { FFaker::Name.name }
    password { 'password' }
  end
end
