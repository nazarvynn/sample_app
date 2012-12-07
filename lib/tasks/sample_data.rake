namespace :db do 
	desc "Fill database with sampol data"
	task :populate => :environment do
		admin = User.create!(:name => "Nazar Vynn",
			:email => "nazar.vynn@gmail.com",
			:password => "123456",
			:password_confirmation => "123456")
		admin.toggle!(:admin)

		User.create!(:name => "Examlpe User",
			:email => "example@railstutorial.org",
			:password => "foobar",
			:password_confirmation => "foobar")

		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = '123456'

			User.create!(:name => name,
				:email => email,
				:password => password,
				:password_confirmation => password)
		end
	end
end