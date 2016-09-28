class RemoveUniqueConstraintFromConnections < ActiveRecord::Migration
  def change
  	remove_index(:connections, :name => 'index_connections_on_user_id_and_associate_id')
  	
  	
  end
end
