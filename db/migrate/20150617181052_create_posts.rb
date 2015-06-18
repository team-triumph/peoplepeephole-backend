class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :image
      t.integer :user_id
      t.string :answer
      t.boolean :complete, :null => false

      t.timestamps null: false
    end
  end
end
