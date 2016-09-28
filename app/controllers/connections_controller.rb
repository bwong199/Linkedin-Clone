class ConnectionsController < ApplicationController

	def create
		Connection.create(connection_params)
		redirect_to users_path
	end 


	def update
		@connection = Connection.find(params[:id])
		@connection.update_attributes(connection_params)

		if !other_connection_params.nil?
			Connection.create(other_connection_params)
		end

		redirect_to professional_profile_index_path
	end

	def destroy
		connection = Connection.where("user_id = ? AND associate_id = ?", params[:connection][:user_id],  params[:connection][:associate_id])
		if  connection.exists?
			puts "FIRST CONNECTION EXISTS"
			Connection.destroy(connection)
		end
		
		other_connection = Connection.where("user_id = ? AND associate_id = ?", params[:other_connection][:user_id], params[:other_connection][:associate_id])
	
		if  other_connection.exists?
			puts "SECOND CONNECTION EXISTS"
			Connection.destroy(other_connection)
		end
		 redirect_to professional_profile_index_path
		end 

		private 

		def connection_params
			params.require(:connection).permit(:user_id, :associate_id, :status)
		end

		def other_connection_params
			params.require(:other_connection).permit(:user_id, :associate_id, :status)
		end
	end
