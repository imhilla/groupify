require 'rails_helper'

RSpec.describe 'ancients', type: :system do
  before(:all) do
    User.create(name: 'hillary', username: 'imhilla', email: 'hillaryodhiambo282@gmail.com', password: '123456',  password_confirmation: '123456')
  end
  describe 'index page' do
    it 'shows the right content' do
      do_signup('hillary', 'imhilla', 'hillaryodhiambo282@gmail.com', '123456')
      do_login('imhilla', '123456')
      visit articles_path
      sleep(5)

      expect(page).to have_content('no more posts')
    end
  end
end