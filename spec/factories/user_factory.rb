# -*- encoding : utf-8 -*-
FactoryGirl.define do
  factory :user, class: User do
    provider "Faker::Lorem.sentence"
    uid { "#{Faker::Number.digit}" }
    name { Faker::Name.name }
    sequence(:email) { |n| "email#{n}@codeschool.com" }
  end
end
