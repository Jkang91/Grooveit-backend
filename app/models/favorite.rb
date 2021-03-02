class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :dance_video
    validates :dance_video_id, uniqueness: true
end
