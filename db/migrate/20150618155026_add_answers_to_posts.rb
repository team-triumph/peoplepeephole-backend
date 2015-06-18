class AddAnswersToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :answer_1, :string
    add_column :posts, :answer_2, :string
    add_column :posts, :answer_3, :string
  end
end
