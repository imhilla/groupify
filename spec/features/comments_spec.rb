require 'rails_helper'

RSpec.describe 'ancients', type: :system do
  describe 'index page' do
    it 'allows user to create a comment' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('Add new')
      create_article
      create_comment
      expect(page).to have_content 'I am working on my capstone right now'
    end
  end
end
