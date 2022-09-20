require 'rails_helper'

RSpec.describe 'Roles Page' do
  before :each do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
                                                                           :provider => 'google',
                                                                           :uid => '123545',
                                                                           :info => {
                                                                             :email => 'me@me.com',
                                                                             :name => 'Bono'
                                                                           },
                                                                           :credentials => {
                                                                             :token => '555'
                                                                           }
                                                                         })
      visit '/auth/google_oauth2'
  end
  it "has a link 'I am an artist' which takes me to artist/registration" do
    click_on 'I am an artist'
    expect(current_path).to eq('/artists/register')
  end
  it "has a link 'I am a venue/booker' which takes me to venue/registration" do
    click_on 'I am a venue'
    expect(current_path).to eq('/venues/register')
  end
end