module IntegrationTestHelpers
  def do_signup(name, username, email, password)
    visit root_path
    click_button('SIGN UP')
    attach_file("user[image]", "#{Rails.root}/spec/files/attachment.jpeg", visible: false)
    find("input[placeholder='Name']").set 'hillary'
    find("input[placeholder='Username']").set 'imhilla'
    find("input[placeholder='Email']").set 'hillaryodhiambo282@gmail.com'
    find("input[placeholder='Password']").set '123456'
    find("input[placeholder='Password confirmation']").set '123456'
    click_button('sign_up')
  end

  def do_login(username, password)
    visit root_path
    click_button('LOG IN')
    find("input[placeholder='Username']").set 'imhilla'
    find("input[placeholder='Password']").set '123456'
    click_button('sign_in')
  end
end