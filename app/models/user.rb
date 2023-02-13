class User < ApplicationRecord
  validates :name, presence: true

  has_many :tweets
  has_many :likes
  has_many :liked_tweet, through: :likes, source: :tweet
end
