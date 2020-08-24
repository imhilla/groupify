require 'rails_helper'

RSpec.describe 'users_controller', type: :system do
  it 'signs up  a user' do
    do_signup('hillary', 'kiptoo', 'hillary282@gmail.com', '123456')
    expect(page).to have_content 'G'
  end

  it 'logs in a user' do
    visit root_path
    do_login('hillary', '123456')
    expect(page).to have_content 'G'
  end

  it 'shows a users articles' do
    do_signup('mercy', 'akoth', 'mercyakoth@gmail.com', '123456')
    click_button(class: 'openbtn')
    click_link('side-link2')
    click_link('+')
    create_article
    click_button(class: 'openbtn')
    click_link('side-link1')
    expect(page).to have_content 'Capstone projects are projects to test your mastery of a particular section'
  end
end
