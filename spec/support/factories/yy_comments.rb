# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :yy_comment, class: 'Yy::Comment' do
    user
    topic factory: :yy_topic
    content "MyText"
  end
end
