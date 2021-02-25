class UserVideoSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :date
end
