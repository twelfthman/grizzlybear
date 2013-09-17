require 'test_helper'

class SearchForEventsTest < ActionDispatch::IntegrationTest
  describe "the search" do
    
    it "returns results with a matching event type" do
      pending "needs models to work"
      visit root_path
      fill_in "event type", with: "running"
      fill_in "location", with: "Auckland"
      click_button "Search"

      page.must have_content "running events near Auckland"
    end
  end
  
end
