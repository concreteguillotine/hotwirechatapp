FactoryBot.define do
    factory :user do
        username { "name" }
        sequence(:email) { |n| "test#{n}@example.com" }
        password { "password" }
    end
end