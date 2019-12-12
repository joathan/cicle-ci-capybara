require 'rails_helper'

RSpec.describe 'State', type: :feature do
  scenario 'index page' do
    visit states_path
    expect(page).to have_content('Hello, world!')
  end
end
