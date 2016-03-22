class AddEyesColorToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :eye, index: true
  end
end
