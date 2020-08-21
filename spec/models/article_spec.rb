require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { should belong_to(:author).class_name('User') }
    it { should belong_to(:group).optional }
    it { should have_many(:comments).dependent(:destroy) }
    it { should have_many(:likes).dependent(:destroy) }
  end

  before(:all) do
    User.create(name: 'james', username: 'james', email: 'james@gmail.com', password: '123456')
    Article.create(title: 'How to use ruby on rails', body: 'Rails is a ruby framework that..', author_id: 1)
  end

  it 'creates one article' do
    expect(Article.all.count).to be_eql 1
  end
end

