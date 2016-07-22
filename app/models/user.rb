class User < ActiveRecord::Base
  # Remember to create a migration!

  include BCrypt

  has_many :questions
  has_many :answers
  has_many :responses 
  has_many :votes

  has_many :answers, through: :questions

  has_many :responses, through: :questions
  has_many :responses, through: :answers

  has_many :votes, through: :questions
  has_many :votes, through: :answers
  has_many :votes, through: :responses




end
