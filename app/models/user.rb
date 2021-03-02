class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :favorites
    has_many :ratings
    has_many :user_videos
    has_many :dance_videos, through: :comments
    validates :username, uniqueness: true
    validates :username, presence: true
end
