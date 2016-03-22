class CreateHairStyles < ActiveRecord::Migration
  def change
    create_table :hair_styles do |t|

    	t.string :style

      t.timestamps null: false
    end
  end
end
