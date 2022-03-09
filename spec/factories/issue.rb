FactoryBot.define do
  factory :issue do
    issue_id {Faker::Number.number(digits: 2)}
    payload {''}
  end
end
