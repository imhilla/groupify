require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'associations' do
    it { should belong_to(:article) } 
    it { should belong_to(:user) }
  end

  before(:all) do
    User.create(name: 'hasan', username: 'hasan', email: 'ozovalihasan@gmail.com', password: '123456')
    Article.create(title: 'my name', body: 'my name is hillary', author_id: 1)
    Like.create(user_id: 1, article_id: 1)
  end

  it 'is valid with valid attributes' do
    expect(User.first.likes.count).to eql 1
  end
end