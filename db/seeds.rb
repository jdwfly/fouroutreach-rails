user1 = User.create!(email: "user1@example.com",
                    password: "password",
                    password_confirmation: "password")
user2 = User.create!(email: "user2@example.com",
                     password: "password",
                     password_confirmation: "password")
# For user1
5.times do |n|
  name = Faker::Name.name
  address = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state_abbr
  zip = Faker::Address.zip
  phone = Faker::PhoneNumber.phone_number
  email = "example-#{n+1}@josephwheaton.com"
  poc = "Visitation"
  interests = Faker::Hacker.ingverb
  user1.prospects.create!(name: name,
                   address: address,
                   city: city,
                   state: state,
                   zip: zip,
                   phone: phone,
                   email: email,
                   point_of_contact: poc,
                   interests: interests)
end
# For user2
5.times do |n|
  name = Faker::Name.name
  address = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state_abbr
  zip = Faker::Address.zip
  phone = Faker::PhoneNumber.phone_number
  email = "example-#{n+10}@josephwheaton.com"
  poc = "Visitation"
  interests = Faker::Hacker.ingverb
  user2.prospects.create!(name: name,
                   address: address,
                   city: city,
                   state: state,
                   zip: zip,
                   phone: phone,
                   email: email,
                   point_of_contact: poc,
                   interests: interests)
end
