class UserVideoSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :title, :date, :file
end
