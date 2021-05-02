class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :snack
    validates :snack_id, uniqueness: { scope: :user_id,
    message: "you already put that snack in your stash" }
end
