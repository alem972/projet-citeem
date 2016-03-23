class CreateSilhouettes < ActiveRecord::Migration
  def change
    create_table :silhouettes do |t|

    	t.string :silhouette

      t.timestamps null: false
    end
  end
end
