class Post < ActiveRecord::Base
  has_many :guesses
  belongs_to :user

  validates :user_id, presence: true
end
