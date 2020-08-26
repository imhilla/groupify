require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'associations' do
    it { should belong_to(:article) }
  end

  before(:all) do
    User.create(name: 'james', username: 'james', email: 'james@gmail.com', password: '123456')
    Article.create(title: 'How to use ruby on rails', body: 'Rails is a ruby framework that..', author_id: 1)
    Comment.create(body: 'Which resources can i use', article_id: 1, user_id: 1)
  end

  it 'creates a comment in an article' do
    expect(Comment.all.count).to be_eql 1
  end
end
