class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :numMsgs
      t.references :client
      t.string :title
      t.references :user
      t.text :body

      t.timestamps
    end
    add_index :topics, :client_id
    add_index :topics, :user_id
  end
end
