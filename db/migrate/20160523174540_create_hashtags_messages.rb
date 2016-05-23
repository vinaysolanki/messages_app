class CreateHashtagsMessages < ActiveRecord::Migration
  def change
    create_table :hashtags_messages do |t|
      t.integer :message_id
      t.integer :hashtag_id

      t.timestamps null: false
    end
  end
end
