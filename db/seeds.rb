10.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'helloworld'
  )
  user.skip_confirmation!
  user.save!
end 
users = User.all
100.times do 
    Item.create!(
        name: Faker::Lorem.sentence,
        user: users.sample
    )
end

puts "#{Item.count} items created"
puts "#{User.count} users created"