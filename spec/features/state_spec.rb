require 'rails_helper'

RSpec.describe 'State', type: :feature do
  scenario 'index page' do
    visit states_path
    expect(page).to have_content('Hello, world!')
  end

  scenario 'create a new state' do
    visit 'states/new'
    fill_in 'Name', with: 'Alagoas'
    click_button 'Create State'
    expect(page).to have_content 'State was successfully created'
  end

  scenario 'edit a state' do
    visit 'states/new'
    fill_in 'Name', with: 'Alagoas'
    click_button 'Create State'

    state = State.last

    visit "#{state.id}/edit"
    fill_in 'Name', with: 'Alagoass'
    click_button 'Update State'
    expect(page).to have_content 'State was successfully updated.'
  end
end
