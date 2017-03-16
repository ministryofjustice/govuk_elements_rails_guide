require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe '#home' do
    it 'renders home page' do
      get :home
      expect(response).to have_rendered(:home)
    end
  end
end
