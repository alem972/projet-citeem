class AddHairColorToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :hair_color, index: true
  end
end
