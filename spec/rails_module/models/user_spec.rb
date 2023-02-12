require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:handle) }
  end

  describe 'associations' do
    xit { should have_many(:followers) }
    xit { should have_many(:followings) }
    it { should have_many(:tweets) }
    it { should have_many(:liked_tweets) }
  end
end
