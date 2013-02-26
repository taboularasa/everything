FactoryGirl.define do
  trait :base do
    sequence(:title) { |n| "title#{n}"}
    sequence(:barcode) { |n| "#{n}" }
  end

  factory :item, traits: [:base]

  factory :book  do
    base
    sequence(:author) { |n| "author#{n}" }
    sequence(:publisher) { |n| "publisher#{n}" }
    sequence(:isbn) { |n| n.to_s.rjust(13,'0') }
    sequence(:amazon) { |n| n.to_s.rjust(13,'0') }
    pages 123
  end

  factory :cable do
    base
    connector_type "foo"
    length 12
    color "blue"
  end

  factory :computer do
    base
    cpu "i7"
    gpu "gtx"
    ram 8
  end

  factory :consumable do
    base
  end

  factory :game do
    base
    sequence(:publisher) { |n| "publisher#{n}" }
    platform "xbox"
  end

  factory :peripheral do
    base
    computer_id 4
    model "vaspula"
    manufacturer "razer"
  end

  factory :power_supply do
    base
    input 120
    output 5
    amp_rating 500
    input_connector "c7"
    output_connector "barrel jack"
  end

  factory :software do
    base
    version 10
    publisher "microsoft"
  end

  factory :tool do
    base
    type "screwdriver"
  end

  factory :container do
    sequence(:name) { |n| "container#{n}" }
    sequence(:barcode) { |n| "#{n}" }
  end

  factory :user do
    sequence(:name) { |n| "user#{n}" }
  end

end

