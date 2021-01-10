class AddBunIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bunid, :integer
  end
end
