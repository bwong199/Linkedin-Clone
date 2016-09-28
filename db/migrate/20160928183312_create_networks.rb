class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.integer :user1
      t.integer :user2
      t.string :status

      t.timestamps null: false
    end

    add_index :networks, :user1
    add_index :networks, :user2
    add_index :networks, :status
    add_index :networks, [:user1, :user2], unique: true
  end
end
