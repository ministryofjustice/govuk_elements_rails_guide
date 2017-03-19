require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe '#home' do
    it 'renders home page' do
      get :home
      expect(response).to have_rendered(:home)
    end
  end

  describe '#forms_elements' do
    it 'renders the form elements page' do
      get :form_elements
      expect(response).to have_rendered(:form_elements)
    end
  end
end
