class AddGenderToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :gender, index: true
  end
end
