class MeetupSerializer < ActiveModel::Serializer
  attributes :id, :time, :date, :location, :comments, :friend_id
  belongs_to :friend
end
