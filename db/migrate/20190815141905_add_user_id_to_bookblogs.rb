class AddUserIdToBookblogs < ActiveRecord::Migration[5.2]
  def change
    add_column :bookblogs, :user_id, :integer
  end
end
