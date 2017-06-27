testuser = User.create!(email: "joe@example.com",
                    password: "joeblow",
                    password_confirmation: "joeblow")
10.times do |n|
  name = Faker::Name.name
  address = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state_abbr
  zip = Faker::Address.zip
  phone = Faker::PhoneNumber.phone_number
  email = "example-#{n+1}@josephwheaton.com"
  poc = "Visitation"
  interests = Faker::Hacker.ingverb
  testuser.prospects.create!(name: name,
                   address: address,
                   city: city,
                   state: state,
                   zip: zip,
                   phone: phone,
                   email: email,
                   point_of_contact: poc,
                   interests: interests)
end
