class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :dance_video
    # validates :user_id, uniqueness: true
end
