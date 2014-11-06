class IdeaVote < ActiveRecord::Base
  belongs_to :idea
  belongs_to :user

  validates_uniqueness_of :idea_id, scope: :user_id
  validates_inclusion_of :value, in: [1,5]
  validate :ensure_not_author

  def ensure_not_author
  	errors.add :user_id, "Since you are the author of this idea, it does not make much sense for you to be voting on it, does it..?" if idea.user_id == user_id
  end

end
