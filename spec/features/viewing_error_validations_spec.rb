require 'rails_helper'

feature 'Submit a general enquiry' do
  scenario 'User wants to view the gems documentation on form element' do
    home_page.load

    expect(home_page).to have_error_validations_link

    home_page.error_validations_link.click

    expect(error_validations_page).to be_displayed
  end
end
