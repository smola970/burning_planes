# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

admin = User.create(username: "admin", password: "password", password_confirmation: "password", admin: true)

user = User.create(username: "customer", password: "password", password_confirmation: "password", admin: false)

flight = Flight.create(flight_number: "QF 93", origin: "MEL", destination: "LAX", date: "19/11/2014", plane_id: 1)

airplane = Airplane.create(name: "A380", rows: 10, columns: 4)
