require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:likes).dependent(:destroy) }
    it { should have_attached_file(:image) }
    it { should validate_attachment_content_type(:image).
      allowing('image/png', 'image/gif').
      rejecting('text/plain', 'text/xml')}
  end

  before(:all) do
    User.create(name: 'hasan', username: 'hasan', email: 'ozovalihasan@gmail.com', password: '123456')
  end
  it 'creates a user' do
    expect(User.all.count).to be_eql 1
  end
end