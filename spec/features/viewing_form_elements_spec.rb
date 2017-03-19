require 'rails_helper'

feature 'Submit a general enquiry' do
  scenario 'User wants to view the gems documentation on form element' do
    home_page.load

    expect(home_page).to have_form_elements_link

    home_page.form_elements_link.click

    expect(form_elements_page).to be_displayed
  end
end
