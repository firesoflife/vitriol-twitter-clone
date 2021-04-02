class AddUserIdToBark < ActiveRecord::Migration[6.1]
  def change
    add_column :barks, :user_id, :integer
  end
end
