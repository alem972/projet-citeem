class CreateSvEthnicOrigins < ActiveRecord::Migration
  def change
    create_table :ethnic_origins do |t|

    	t.string :origins

      t.timestamps null: false
    end
  end
end
