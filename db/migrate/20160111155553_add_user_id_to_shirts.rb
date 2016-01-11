class AddUserIdToShirts < ActiveRecord::Migration
  def change
    add_column :shirts, :user_id, :integer
  end
end
