class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :favorites
    has_many :ratings
    has_many :user_videos
    has_many :dance_videos, through: :comments
    validates :username, uniqueness: true
    validates :username, presence: true

    # def self.create_user_for_google(data)                  
    #     where(uid: data["email"]).first_or_initialize.tap do |user|
    #       user.provider="google_oauth2"
    #       user.uid=data["email"]
    #       user.email=data["email"]
    #       user.password=Devise.friendly_token[0,20]
    #       user.password_confirmation=user.password
    #       user.save!
    #     end
    # end  

    def self.find_or_create_from_google(payload)
        User.where(name: payload["name"]).first_or_create do |new_user|
        # User.where(name: payload["email"]).first_or_create do |new_user|
              new_user.name = payload["name"]
              # new_user.name = payload["email"]
              new_user.password = SecureRandom.base64(15)
            end
    end
end
