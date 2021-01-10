class CreateBunruis < ActiveRecord::Migration[5.2]
  def change
    create_table :bunruis do |t|
      t.string :bun_name

      t.timestamps
    end
  end
end
