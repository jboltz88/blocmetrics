
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

%w{collect page_load btn_click}.each do |event_name|
#["collect", "page_load", "btn_click"].each do |event_name|
  100.times do
    # create event from sample registered app using event_name
    Event.create!(
      name: event_name,
      registered_app: registered_apps.sample
    )
  end
end

# 300.times do
#   Event.create!(
#     name: Faker::Hacker.verb,
#     registered_app: registered_apps.sample
#   )
# end

puts "Seed Data Created"
puts "#{User.count} users created"
puts "#{RegisteredApp.count} registered applications created"
puts "#{Event.count} events created"
