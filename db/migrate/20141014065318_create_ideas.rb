class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :area
      t.integer :votes

      t.timestamps
    end
  end
end
