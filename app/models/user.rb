class User < ApplicationRecord
  validates :name, presence: true

  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_tweet, through: :likes, source: :tweet
end
