class User < ActiveRecord::Base
  # Remember to create a migration!

  include BCrypt

  has_many :questions
  has_many :answers
  has_many :responses
  has_many :votes

  has_secure_password



end
