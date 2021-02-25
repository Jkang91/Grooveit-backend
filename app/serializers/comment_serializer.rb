class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :dance_video
  attributes :id, :user_id, :dance_video_id, :comment
end
