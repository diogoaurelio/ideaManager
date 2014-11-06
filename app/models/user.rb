class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :ideas, dependent: :destroy
  validates :password,      :presence => true
  validates :email,         :presence => true, :uniqueness => true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #attr_accessible :email
  has_many :votes

  def total_votes
  	IdeaVote.joins(:idea).where(ideas: {user_id: self.id}).sum('value')
  end
end
