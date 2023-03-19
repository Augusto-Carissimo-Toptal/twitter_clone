class User < ApplicationRecord
  validates :name, presence: true
  validates :handle, presence: true

  has_many :tweets, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_tweets, through: :likes, source: :tweet
end
