class RenameUsersTableToConnections < ActiveRecord::Migration
	def change
	    rename_table :networks, :connections
	  end
end
