require 'faker'


10.times do


	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		password_digest: Faker::Internet.password(8, 20)
		)

end



10.times do


	Question.create(
		title: Faker::Lorem.sentence,
		content: Faker::Lorem.paragraph,
		user_id: Faker::Number.number(1)

		)
	

end


10.times do


	Answer.create(
		content: Faker::Lorem.paragraph,
		user_id: Faker::Number.number(1),
		question_id: Faker::Number.number(1)
		)
	

end


10.times do


	Response.create(
		content: Faker::Lorem.paragraph,
		user_id: Faker::Number.number(1),
		respondable_id: Faker::Number.number(1),
		respondable_type: ["Question", "Answer"].sample
		)
	

end




10.times do


	Vote.create(
		user_id: Faker::Number.number(1),
		vote_value: true,
		votable_id: Faker::Number.number(1),
		votable_type: ["Question", "Answer", "Response"].sample
		)
end


