class AddOriginsToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :ethnic_origins, index: true
  end 	
end
