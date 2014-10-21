class AddUserToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :user, :string
  end
end
