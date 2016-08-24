
10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
  user.skip_confirmation!
  user.save!
end

users = User.all

30.times do
  RegisteredApp.create!(
    name: Faker::App.name,
    url: Faker::Internet.url,
    user: users.sample
  )
end

registered_apps = RegisteredApp.all

300.times do
  Event.create!(
    name: Faker::Hacker.verb,
    registered_app: registered_apps.sample,
  )
end

puts "Seed Data Created"
puts "#{User.count} users created"
puts "#{RegisteredApp.count} registered applications created"
puts "#{Event.count} events created"
