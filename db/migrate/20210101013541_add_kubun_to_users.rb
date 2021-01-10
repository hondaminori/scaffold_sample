class AddKubunToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :kubun, :integer
  end
end
