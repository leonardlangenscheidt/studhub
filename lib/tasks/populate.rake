namespace :db do
	desc "fill database with sample data"
	task populate: :environment do
		10. times do |n|
			puts "[DEBUG] creating user #{n+1} of 10"
			name = Faker::Name.name
			email = "user-#{n+1}@example.com"
			password = "fufoobar"
			User.create!( name: name,
				email: email,
				password: password,
				password_confirmation: password )
		end
		User.all.each do |user|
			puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
			10.times do |n|
				image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
				brand = %w(brand1 brand2 brand3 brand4 brand5 brand6).sample
				color = %w(blue yellow red green silver gold).sample
				user.earrings.create!(image: image,
					brand: brand,
					color: color)
			end
		end
	end
end
