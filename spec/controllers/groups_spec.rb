require 'rails_helper'

RSpec.describe 'aricles', type: :system do
  describe 'index page' do
    it 'creates and shows groups' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link3')
      click_link('Create New')
      create_group
      click_button(class: 'openbtn')
      click_link('side-link3')
      expect(page).to have_content 'Amazon'
    end

    it 'shows articles in a group' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link3')
      click_link('Create New')
      create_group
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('+')
      create_article_group
      click_button(class: 'openbtn')
      click_link('side-link3')
      click_link('Amazon')
      expect(page).to have_content 'Capstone projects'
    end
  end
end
