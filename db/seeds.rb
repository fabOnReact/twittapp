10.times do
	user = Faker::Twitter.user
	Post.create(name: user[:screen_name], message: user[:status][:text])
end