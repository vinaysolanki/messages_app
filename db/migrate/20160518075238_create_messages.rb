class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body, limit: 141

      t.timestamps null: false
    end
  end
end
