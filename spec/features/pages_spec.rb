require 'rails_helper'

RSpec.describe 'aricles', type: :system do
  describe 'index page' do
    it 'shows a splash page' do
      splash_page
      expect(page).to have_content 'Groupify'
    end
  end
end
