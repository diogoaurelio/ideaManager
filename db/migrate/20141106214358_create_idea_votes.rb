class CreateIdeaVotes < ActiveRecord::Migration
  def change
    create_table :idea_votes do |t|
      t.integer :votes
      t.references :idea, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
