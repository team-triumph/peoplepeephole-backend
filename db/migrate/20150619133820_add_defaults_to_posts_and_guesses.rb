class AddDefaultsToPostsAndGuesses < ActiveRecord::Migration
  def change
    change_column :posts, :complete, :boolean, default: false
    change_column :guesses, :point, :integer, default: 1
  end
end
