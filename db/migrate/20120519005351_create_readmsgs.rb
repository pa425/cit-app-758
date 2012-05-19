class CreateReadmsgs < ActiveRecord::Migration
  def change
    create_table :readmsgs do |t|
      t.integer :numMsgsRead
      t.references :topic
      t.references :user

      t.timestamps
    end
    add_index :readmsgs, :topic_id
    add_index :readmsgs, :user_id
  end
end
