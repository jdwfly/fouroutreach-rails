10.times do |n|
  name = Faker::Name.name
  address = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state_abbr
  email = "example-#{n+1}@josephwheaton.com"
  Prospect.create!(name: name,
                   address: address,
                   city: city,
                   state: state,
                   email: email)
end
