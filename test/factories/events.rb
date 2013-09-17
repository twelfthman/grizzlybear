FactoryGirl.define do
  factory :event do
    name "Event name"
    description "event description"
    location "Auckland, NZ"
    date "2013/04/15"
    association :event_type, factory: :event_type

  end
end
