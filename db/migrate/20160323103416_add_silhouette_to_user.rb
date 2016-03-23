class AddSilhouetteToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :silhouette, index: true
  end
end
