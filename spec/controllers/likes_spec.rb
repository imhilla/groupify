require 'rails_helper'

RSpec.describe 'likes', type: :system do
  describe 'index page' do
    it 'allows user to like articles' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('+')
      create_article
      create_like
      expect(page).to have_content '1 like'
    end
  end
end
