require 'test_helper'

class EventTest < ActiveSupport::TestCase
  subject {Event.new}
    it "has a valid factory" do
      (FactoryGirl.build :event).must_be :valid?
    end

    it "is invalid without a name" do 
      event = FactoryGirl.build :event, name: nil
      event.must_be :invalid?
    end
    
    it "is invalid without a location" do
      event = FactoryGirl.build :event, location: nil
      event.must_be :invalid?
    end

    it "is invalid without a date" do 
      event = FactoryGirl.build :event, date: nil
      event.must_be :invalid?
    end

    it "is invalid with a bad date format"

    it {must belong_to :event_type}

    it {must validate_presence_of :event_type_id }

    it "has a longitude and latitude after creation" do
      event = FactoryGirl.create :event
      (event.longitude).wont_be_nil
      (event.latitude ).wont_be_nil
    end

    it "has a longitude and latitude that matches the location" do
      event = FactoryGirl.create :event, location: "Auckland, NZ"
      [event.latitude, event.longitude].must_equal Geocoder.coordinates("Auckland, NZ")
    end

end
