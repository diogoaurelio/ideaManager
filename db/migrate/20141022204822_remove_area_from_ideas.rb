class RemoveAreaFromIdeas < ActiveRecord::Migration
  def change
    remove_column :ideas, :area, :string
  end
end
