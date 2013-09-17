require 'test_helper'

class SearchForEventsTest < ActionDispatch::IntegrationTest
  fixtures :event_types
  fixtures :events

  describe "the search" do

    it "returns results with a matching event type" do
      skip "need to write search action"
      visit root_path
      select "Running", from: "event_type"
      fill_in "event[location]", with: "Auckland"
      click_button "Search"

      page.must_have_content "Running events near Auckland"
    end
  end
  
end

