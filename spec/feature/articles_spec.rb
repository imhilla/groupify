require 'rails_helper'

RSpec.describe 'aricles', type: :system do
  describe 'index page' do
    it 'creates articles' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('+')
      create_article
      visit('/articles')
      expect(page).to have_content 'Capstone projects are projects to test your mastery of a particular section'
    end

    it 'shows the right content' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('+')
      create_article
      visit('/articles')
      click_link('Most recent')
      expect(page).to have_content 'Capstone projects are projects to test your mastery of a particular section'
    end

    it 'allows user to create a comment' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('+')
      create_article
      create_comment
      expect(page).to have_content 'I am working on my capstone right now'
    end
  end
end
