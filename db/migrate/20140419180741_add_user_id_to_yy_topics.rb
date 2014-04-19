class AddUserIdToYyTopics < ActiveRecord::Migration
  def change
    add_column :yy_topics, :user_id, :integer, null: false
    add_index :yy_topics, :user_id
  end
end
