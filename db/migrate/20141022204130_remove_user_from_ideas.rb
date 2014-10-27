class RemoveUserFromIdeas < ActiveRecord::Migration
  def change
  	remove_column :ideas, :user, :string
  end
end
