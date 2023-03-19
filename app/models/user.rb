class User < ApplicationRecord
  validates :name, presence: true
  validates :handle, presence: true

  has_many :tweets, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_tweets, through: :likes, source: :tweet

  has_many :followers, :class_name => 'Follow', :foreign_key => 'followed_id'
  has_many :followings, :class_name => 'Follow', :foreign_key => 'follower_id'
end
