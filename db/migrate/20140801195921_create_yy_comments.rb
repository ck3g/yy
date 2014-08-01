class CreateYyComments < ActiveRecord::Migration
  def change
    create_table :yy_comments do |t|
      t.references :user, index: true, null: false
      t.references :topic, index: true, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
