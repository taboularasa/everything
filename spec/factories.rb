FactoryGirl.define do
  trait :item do
    sequence(:title) { Faker::Name.title }
    sequence(:barcode) { |n| "#{n}" }
    sequence(:container_id) { 1 }
  end

  factory :book do
    sequence(:author) { Faker::Name.first_name }
    sequence(:publisher) { Faker::Company.name }
    sequence(:isbn) { |n| n.to_s.rjust(13,'0') }
    sequence(:amazon) { |n| n.to_s.rjust(13,'0') }
    sequence(:pages) { 123 } #random number
  end

  factory :container do
    sequence(:name) { Faker::Company.name }
  end

  factory :container_with_item, :parent => :container do
    after_create do |container|
      FactoryGirl.create(:item, :container => container)
    end
  end

end

