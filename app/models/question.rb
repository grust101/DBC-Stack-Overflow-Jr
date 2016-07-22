class Question < ActiveRecord::Base

	has_many :votes, :as => :votable
	has_many :responses, :as => :respondable
	has_many :answers

	belongs_to :users
  # Remember to create a migration!
end
