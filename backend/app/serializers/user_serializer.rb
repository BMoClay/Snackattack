class UserSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :snacks, through: :favorites
  
  attributes :id, :name, :age, :lifestyle
end
