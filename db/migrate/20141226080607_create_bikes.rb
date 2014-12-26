class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :model
      t.string :category
      t.text :description
      t.integer :year_made

      t.timestamps
    end
  end
end
