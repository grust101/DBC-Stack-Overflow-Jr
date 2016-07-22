class Response < ActiveRecord::Base
	has_many :votes, :as => :votable

	belongs_to :respondable, :polymorphic => true
	
	belongs_to :users, through: :questions 
	belongs_to :users, through: :answers
	
	belongs_to :users
  # Remember to create a migration!

  
end
