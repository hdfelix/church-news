FactoryBot.define do
  factory :newsletter do
    title { "Sample Newsletter" }
    date { DateTime.now.to_s }
    address { "2 City Ln, Plainville, CA" }
  end
end
