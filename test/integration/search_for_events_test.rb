require 'test_helper'

class SearchForEventsTest < ActionDispatch::IntegrationTest
  describe "the search" do

    before :all do
      FactoryGirl.create :event_type, name: "Running"
    end
    
    it "returns results with a matching event type" do
      skip "need to write controller search action"
      visit root_path
      select "Running", from: "event_type"
      fill_in "event[location]", with: "Auckland"
      click_button "Search"

      page.must_have_content "Running events near Auckland"
    end
  end
  
end
