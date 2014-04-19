# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :yy_topic, class: Yy::Topic do
    sequence(:title) { |n| "Topic ##{n} title"}
    content "There is goes topic content"
    user
  end
end
