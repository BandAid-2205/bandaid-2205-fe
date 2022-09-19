require 'rails_helper'

RSpec.describe 'venue show page' do
   xit 'shows artists name, image(optional), genre, location, and bio' do
      user = User.create!(uid: 321, email: 'email@email.com', token: 123, role: 0)
      
      visit '/venues/register'

      fill_in "Location:", with: "123 Main St."
      fill_in "Phone:", with: "555-555-5555"
      fill_in "Category:", with: "Indoor/Outdoor bar & lounge."
      
      visit "/venues/#{user.id}"

      expect(page).to have_content("Location:")
      expect(page).to have_content("Phone:")
      expect(page).to have_content("Category:")
   end 

   it 'has a button to edit my profile' do
   end

   it 'has a section to view my BandAid rating' do
   end

   it 'has a section that lists my events' do
   end

   it 'section that lists events with artists I have requested to play' do
   end

   it 'has a button to delete profile' do
   end
end