class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :dance_video
end
