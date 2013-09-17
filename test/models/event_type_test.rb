require "test_helper"

class EventTypeTest < ActiveSupport::TestCase
  subject { EventType.new }
  it { must validate_presence_of :name }
  it { must validate_uniqueness_of(:name).case_insensitive }
  
  it "has a valid factory" do
    (FactoryGirl.build :event_type).must_be :valid?
  end

  it { must have_many :events }
end
