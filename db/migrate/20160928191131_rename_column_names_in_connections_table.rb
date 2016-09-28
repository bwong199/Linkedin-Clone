class RenameColumnNamesInConnectionsTable < ActiveRecord::Migration
  def change
  	rename_column :connections, :user1, :user_id
  	rename_column :connections, :user2, :associate_id
  end
end
