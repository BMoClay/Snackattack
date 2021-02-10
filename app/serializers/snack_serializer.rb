class SnackSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :users, through: :favorites

  attributes :id, :name, :img
end
