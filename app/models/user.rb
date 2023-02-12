class User < ApplicationRecord
  has_many :tweets
  has_many :likes
  has_many :liked_tweet, through: :likes, source: :tweet


end
