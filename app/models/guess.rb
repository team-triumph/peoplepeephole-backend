class Guess < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :guess, :user_id, :post_id, presence: true
  validates :guess, format: { with: /\S/,
    message: "cannot be empty." }
end
