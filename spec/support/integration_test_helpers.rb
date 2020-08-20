module IntegrationTestHelpers
  def do_signup(name, username, email, password)
    visit root_path
    click_button('SIGN UP')
    attach_file("user[image]", "#{Rails.root}/spec/files/attachment.jpeg", visible: false)
    find("input[placeholder='Name']").set 'hillary'
    find("input[placeholder='Username']").set 'hillary'
    find("input[placeholder='Email']").set 'hillaryodhiambo@gmail.com'
    find("input[placeholder='Password']").set '123456'
    find("input[placeholder='Password confirmation']").set '123456'
    click_button('sign_up')
  end

  def do_login(username, password)
    visit root_path
    click_button('LOG IN')
    find("input[placeholder='Username']").set 'hillary'
    find("input[placeholder='Password']").set '123456'
    click_button('sign_in')
  end

  def create_article
    fill_in('Title', :with => 'What is a capstone project')
    fill_in('Title', :with => 'What is a capstone project?')
    fill_in('Body', :with => 'Capstone projects are projects to test your mastery of a particular section')
    click_button('commit')
  end

  def create_group
    fill_in('Name', :with => 'Amazon')
    attach_file("group[icon]", "#{Rails.root}/spec/files/attachment.jpeg", visible: false)
    click_button('commit')
  end

  def create_article_group
    select 'Amazon', from: 'group_id' 
    fill_in('Title', :with => 'What is a capstone project')
    fill_in('Title', :with => 'What is a capstone project?')
    fill_in('Body', :with => 'Capstone projects')
    click_button('commit')
  end

  def create_comment
    click_button('comment')
    fill_in('Body', :with => 'I am working on my capstone right now')
    click_button('commit')
  end

  
  def create_like
    click_button('like')
  end

  def splash_page
    visit root_path
  end
end