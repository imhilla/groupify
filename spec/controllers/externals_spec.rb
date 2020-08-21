require 'rails_helper'

RSpec.describe 'externals', type: :system do
  describe 'index page' do
    it 'shows the right content in the externals page' do
      do_signup('hillary', 'hillary', 'hillaryodhiambo@gmail.com', '123456')
      click_button(class: 'openbtn')
      click_link('side-link2')
      click_link('+')
      create_article
      click_button(class: 'openbtn')
      click_link('side-link4')
      expect(page).to have_content 'Capstone projects are projects to test your mastery of a particular section'
    end
  end
end
