100.times do
  User.create({
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.short_phone_number,
    address: "#{Faker::Address.street_address} #{Faker::Address.city} #{Faker::AddressUS.state_abbr} #{Faker::AddressUS.zip_code}"
    })
end
