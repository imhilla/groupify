require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'associations' do
    it { should have_many(:articles).dependent(:destroy) }
    it { should have_attached_file(:icon) }
    it {
      should validate_attachment_content_type(:icon)
        .allowing('image/png', 'image/gif')
        .rejecting('text/plain', 'text/xml')
    }
  end

  before(:all) do
    User.create(name: 'hasan', username: 'hasan', email: 'ozovalihasan@gmail.com', password: '123456')
    Group.create(name: 'Amazon', icon: '')
  end
  it 'creates a group' do
    expect(Group.all.count).to be_eql 1
  end
end
