require 'rails_helper'

RSpec.describe 'ancients', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('+')
      expect(page).to have_content 'Body'
    end
  end
end