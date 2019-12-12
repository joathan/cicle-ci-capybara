require 'rails_helper'

RSpec.describe 'State', type: :feature do
  scenario 'index page' do
    visit states_path
    expect(page).to have_content('Hello, world!')
  end

  scenario '' do
    visit 'states/new'
    fill_in 'Name', with: 'Alagoas'
    click_button 'Create State'
    expect(page).to have_content 'State was successfully created'
  end
end
