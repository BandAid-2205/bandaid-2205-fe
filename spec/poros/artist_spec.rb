require 'rails_helper'

RSpec.describe Artist do
  it 'exists' do
    data = {name: 'Jay-Z', city: 'Brooklyn, NY'}

    expect(Artist.new(data).name).to eq('Jay-Z')
    expect(Artist.new(data).city).to eq('Brooklyn, NY')
  end
end