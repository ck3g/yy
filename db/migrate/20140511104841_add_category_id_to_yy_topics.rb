class AddCategoryIdToYyTopics < ActiveRecord::Migration
  def change
    add_column :yy_topics, :category_id, :integer
    add_index :yy_topics, :category_id
  end
end
