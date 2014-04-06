class CreateYyTopics < ActiveRecord::Migration
  def change
    create_table :yy_topics do |t|
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
