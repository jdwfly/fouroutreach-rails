10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@josephwheaton.com"
  Prospect.create!(name: name, email: email)
end
