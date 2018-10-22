FactoryBot.define do
  factory :book do
    title "The Hate U Give"
    # title { Faker::Book.title}
    price { rand(5..19)}
    author { create :author }
    content "abc123"
  end
end
