class CreateEyes < ActiveRecord::Migration
  def change
    create_table :eyes do |t|

      t.string :color	

      t.timestamps null: false
    end
  end
end
