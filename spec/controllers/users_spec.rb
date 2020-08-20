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
end
