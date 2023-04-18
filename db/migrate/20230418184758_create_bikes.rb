class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :brand
      t.string :type 
      t.string :condition
      t.integer :price
      t.integer :user_id 
    end
  end
end
