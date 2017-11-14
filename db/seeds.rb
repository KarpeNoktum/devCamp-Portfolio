# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



3.times do |topic|
	topic += 1
	Topic.create!(
	title: "Topic #{topic}"
	)
end

puts "3 Topics created"

10.times do |blog|
	blog += 1
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
		topic_id: Topic.last.id
		)
end

puts "10 blog posts created"
 
5.times do |skill|
	skill += 1
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15

		)
end

puts "5 skills created"

8.times do |portfolio|
	portfolio += 1
	Portfolio.create!(
		title: "Portfolio item #{portfolio}",
		subtitle: "Ruby on Rails",
		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
		main_image:"http://via.placeholder.com/600x400",
		thumb_image:"http://via.placeholder.com/350x200")
end

2.times do |portfolio|
	portfolio += 9
	Portfolio.create!(
		title: "Portfolio item #{portfolio}",
		subtitle: "Angular",
		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
		main_image:"http://via.placeholder.com/600x400",
		thumb_image:"http://via.placeholder.com/350x200"



		)
end

puts "10 Portfolio items created"



	3.times do |technology|
		technology += 1
		Technology.create!(
			name: "Technology #{technology}",
			portfolio_id: Portfolio.last.id
			)
	end

puts "3 Technologies created"

15.times do |user|
	user += 1
	nseed = rand 5

	case nseed
	when 1
		rname = "John Smith"
	when 2
		rname = "Jane Doe"
	when 3
		rname = "Randy Johnson"
	when 4
		rname = "Sarah Connor"
	when 5
		rname = "Lex Luthor"
	else 
		rname = "Lois Lane"
	end

	User.create!(
		email: "test#{user}@test.com",
		password: "tester",
		name: rname
		)

end

puts "Test users created"

