class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'

  has_many :comments
  has_many :comment_topics, through: :comments, source: 'topic'

  has_secure_password
end
