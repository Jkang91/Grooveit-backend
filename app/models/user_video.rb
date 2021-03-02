class UserVideo < ApplicationRecord
    belongs_to :user
    validates :file, presence: true
    validates :title, presence: true
end
