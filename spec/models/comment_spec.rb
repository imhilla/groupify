require 'rails_helper'
# rubocop:disable Metrics/LineLength

RSpec.describe Comment, type: :model do
  describe 'associations' do
    it { should belong_to(:article) }
  end

  before(:all) do
    User.create(name: 'james', username: 'james', email: 'james@gmail.com', password: '123456')
    Article.create(title: 'How to use ruby on rails', body: 'Rails is a ruby framework that..', author_id: 1)
    Comment.create(author_name: 'james', body: 'Which resources can i use', article_id: 1, user_name: 'james', user_id: 1)
  end

  it 'creates a comment in an article' do
    expect(Comment.all.count).to be_eql 1
  end
end
# rubocop:enable Metrics/LineLength
