class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstName
      t.boolean :isMale
      t.string :lastName

      t.timestamps
    end
  end
end
