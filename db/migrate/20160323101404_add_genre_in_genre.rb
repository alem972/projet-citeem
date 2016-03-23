class AddGenreInGenre < ActiveRecord::Migration
  def change
  	add_column :genders, :gender, :string
  end
end
