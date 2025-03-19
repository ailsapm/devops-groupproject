# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

#   end
# Create sample contacts
[
  {
    firstname: 'Susie',
    lastname: 'Wusie',
    email: 'su.wu@madeup.com',
    homephone: '01-555-1234',
    mobile: '089-555-5678',
    address: '123 That Street, YouKnowWhere, Offaly',
    birthday: '1965-06-15'
  },
  {
    firstname: 'Jimmy',
    lastname: 'Dimmy',
    email: 'jim.dim@madeup.com',
    homephone: '02-555-8765',
    mobile: '087-555-4321',
    address: '456 This Street, OverThere, Antrim',
    birthday: '1990-08-25'
  },
  {
    firstname: 'Gary',
    lastname: 'Barry',
    email: 'gar.bar@pretend.com',
    homephone: '03-555-1111',
    mobile: '089-555-2222',
    address: '789 That Ave, Whatchamacallit, Kerry',
    birthday: '1982-03-05'
  },
  {
    firstname: 'Julie',
    lastname: 'Goolie',
    email: 'Ju.Goo@pretend.com',
    homephone: '04-555-4444',
    mobile: '087-555-3333',
    address: '101 This Boulevard, Thingummyjig, Carlow',
    birthday: '1975-12-17'
  },
  {
    firstname: 'Charley',
    lastname: 'Barley',
    email: 'char.bar@madeup.com',
    homephone: '05-555-5555',
    mobile: '089-555-6666',
    address: '202 That Court, RightOverThere, Dublin',
    birthday: '1988-09-10'
  }
].each do |contact_data|
    Contact.create!(contact_data)
  end

puts "database successfully populated"