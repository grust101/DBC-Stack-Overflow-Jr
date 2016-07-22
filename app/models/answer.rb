class Answer < ActiveRecord::Base
  # Remember to create a migration!
	has_many :votes, :as => :votable
	has_many :responses, :as => :respondable

	belongs_to :questions
	belongs_to :users

end
