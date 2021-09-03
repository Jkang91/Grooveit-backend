class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :favorites
    has_many :ratings
    has_many :user_videos
    has_many :dance_videos, through: :comments
    validates :username, uniqueness: true
    validates :username, presence: true

    def self.find_or_create_from_google(payload)
        User.where(name: payload["name"]).first_or_create do |new_user|
        # User.where(name: payload["email"]).first_or_create do |new_user|
              new_user.name = payload["name"]
              # new_user.name = payload["email"]
              new_user.password = SecureRandom.base64(15)
            end
    end
end
