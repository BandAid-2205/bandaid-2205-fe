require 'rails_helper'

RSpec.describe 'artist show page' do
   xit 'has a search bar where i can search events by location' do 
      user = User.create!(uid: 321, email: 'email@email.com', token: 123, role: 0)
      visit "/artists/#{user.id}"

      expect(page).to have_content("Search")
   end

   xit 'shows artists name, image(optional), genre, location, and bio' do
      user = User.create!(uid: 321, email: 'email@email.com', token: 123, role: 0)
      
      visit '/artists/register'

      fill_in "Name:", with: "Nancy"
      fill_in "Genre:", with: "Jazz"
      fill_in "Location:", with: "Horseshoe Bay, Maine"
      fill_in "Bio:", with: "I love to jazz out, will throw down some hands."
      
      visit "/artists/#{user.id}"

      expect(page).to have_content("Name:")
      expect(page).to have_content("Genre:")
      expect(page).to have_content("Location:")
      expect(page).to have_content("Tell me about yourself:")
   end 

   it 'has a button to edit my profile' do
   end

   it 'has a section that lists events for which I am booked' do
   end

   it 'section that lists events that I have requested to be booked for' do
   end

   it 'has a button to delete profile' do
   end
end