class AddColumnsToBikes < ActiveRecord::Migration
  def change
  	add_column :bikes, :latitude, :float
  	add_column :bikes, :longitude, :float
    add_column :bikes, :address, :string
  end
end
