require 'rails_helper'

RSpec.describe Follow, type: :model do
  describe 'associations' do
    xit { should belong_to(:follower).class_name('User') }
    xit { should belong_to(:followed).class_name('User') }
  end
end