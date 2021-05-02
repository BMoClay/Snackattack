class FavoriteSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :snack

  attributes :id, :user_id, :snack_id
end
