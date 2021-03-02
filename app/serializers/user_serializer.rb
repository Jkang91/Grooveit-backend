class UserSerializer < ActiveModel::Serializer
  has_many :comments
  has_many :favorites
  has_many :ratings
  has_many :user_videos
  has_many :dance_videos, through: :comments
  attributes :id, :username, :name, :password_digest
end
