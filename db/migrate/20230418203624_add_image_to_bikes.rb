class AddImageToBikes < ActiveRecord::Migration[6.1]
  def change
    add_column :bikes, :image, :string
  end
end
