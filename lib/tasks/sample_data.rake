namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create(firstname: "Quan",
                 lastname: "Nguyen",
                 password: "password",
                 password_confirmation: "password",
                 email: "quan24@localfalcon.com",
                 work_ph_num: "571-555-5135",
                 cell_ph_num: "571-555-1733",
                 fax_num: "571-555-1308",
                 street_address: "1351 New Street",
                 city: "Herndon",
                 state: "VA",
                 zipcode: "20171") 
    admin.toggle!(:admin)
    99.times do |n|
     firstname = Faker::Name.first_name
     lastname = Faker::Name.last_name
     email = Faker::Internet.email
     password = "password"
     work_number = Faker::PhoneNumber.phone_number
     cell_number = Faker::PhoneNumber.phone_number
     fax_number = Faker::PhoneNumber.phone_number
     address = Faker::Address.street_address
     city = Faker::Address.city
     state = Faker::Address.state_abbr
     zipcode = Faker::Address.zip_code
     User.create(firstname: firstname,
                 lastname: lastname,
                 password: password,
                 password_confirmation: password,
                 email: email,
                 work_ph_num: work_number,
                 cell_ph_num: cell_number,
                 fax_num: fax_number,
                 street_address: address,
                 city: city,
                 state: state,
                 zipcode: zipcode) 
    end
  end
end


