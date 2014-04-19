# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :yy_category, :class => 'Yy::Category' do
    sequence(:name) { |n| "Category ##{n}" }
    description "MyText"
  end
end
