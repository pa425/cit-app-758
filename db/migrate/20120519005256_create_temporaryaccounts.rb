class CreateTemporaryaccounts < ActiveRecord::Migration
  def change
    create_table :temporaryaccounts do |t|
      t.string :email
      t.references :client

      t.timestamps
    end
    add_index :temporaryaccounts, :client_id
  end
end
