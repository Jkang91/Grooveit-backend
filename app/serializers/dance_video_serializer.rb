class DanceVideoSerializer < ActiveModel::Serializer
  has_many :comments
  has_many :favorites
  has_many :ratings
  has_many :users, through: :comments
  attributes :id, :category, :difficulty_level, :title
end
