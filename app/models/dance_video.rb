class DanceVideo < ApplicationRecord
    has_many :comments
    has_many :favorites
    has_many :ratings
    has_many :users, through: :comments
end
