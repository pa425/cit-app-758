class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :topic
      t.references :user
      t.text :body

      t.timestamps
    end
    add_index :messages, :topic_id
    add_index :messages, :user_id
  end
end
