class AddSlugToYyTopics < ActiveRecord::Migration
  def change
    add_column :yy_topics, :slug, :string
    add_index :yy_topics, :slug, unique: true
  end
end
