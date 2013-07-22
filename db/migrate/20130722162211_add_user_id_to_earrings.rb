class AddUserIdToEarrings < ActiveRecord::Migration
  def change
    add_column :earrings, :user_id, :integer
    add_index :earrings, :user_id
  end
end
