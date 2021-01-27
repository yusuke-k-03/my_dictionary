FactoryBot.define do
  factory :dictionary do
    title                 { 'test' }
    category_id           { 2 }
    text                  { "これはテストです" }
    association :user
  end
end
