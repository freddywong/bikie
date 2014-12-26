class RemoveModelColumnFromTable < ActiveRecord::Migration
  def change
  	remove_column :bikes, :model
  end
end
