class FriendSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthday, :visit_interval
  has_many :meetups
end
