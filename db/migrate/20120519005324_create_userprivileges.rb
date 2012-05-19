class CreateUserprivileges < ActiveRecord::Migration
  def change
    create_table :userprivileges do |t|
      t.references :client
      t.integer :privilegeLevel
      t.references :user

      t.timestamps
    end
    add_index :userprivileges, :client_id
    add_index :userprivileges, :user_id
  end
end
