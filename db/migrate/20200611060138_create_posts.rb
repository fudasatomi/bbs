class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :comment
      t.integer :topic_id
      t.integer :user_id

      t.timestamps
    end
  end
end
