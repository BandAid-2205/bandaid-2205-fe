require 'rails_helper'
RSpec.describe "Venues#new" do
   it 'has a form with name, location, phone, and category' do
      visit "/venues/register"
      visit "/venues/register"
      expect(page).to have_content("Location:")
      expect(page).to have_content("Phone:")
      expect(page).to have_content("Category:")
   end

   it 'has a link to import Yelp profile' do
      visit "/venues/register"
      expect(page).to have_content("Import Yelp Profile")
   end
end