class ChangeDataTypeZipcodeOfUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :zipcode, :integer
  end
end
