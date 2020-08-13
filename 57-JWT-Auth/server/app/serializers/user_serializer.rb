class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio 

  # has_many :paintings
end
