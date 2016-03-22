class AddHairStyleToUSer < ActiveRecord::Migration
  def change
  	add_reference :users, :hair_style, index: true
  end
end
