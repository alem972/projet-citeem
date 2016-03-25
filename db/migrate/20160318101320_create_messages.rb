class CreateMessages < ActiveRecord::Migration
  def change
  	# drop_table :messages
    create_table :messages do |t|
    	t.text :content
    	t.references :author
    	t.references :user, index: true
    	t.boolean :has_read, default: false

      t.timestamps null: false
    end
  end
end
