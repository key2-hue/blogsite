class RemoveUserIdTodiaries < ActiveRecord::Migration[5.2]
  def change
    remove_column :diaries, :user_id, :string
  end
end
