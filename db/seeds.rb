# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


airports = Airport.create([
  { code: 'AAR' },
  { code: 'BER' },
  { code: 'CAS' },
  { code: 'YHM' },
  { code: 'HRE' },
  { code: 'ADB' },
  { code: 'GJL' },
  { code: 'VNO' },
  { code: 'WBI' },
  { code: 'ENC' }
])

flights = Flight.create([
  { departure_airport_id: 1, arrival_airport_id: 2, departure_time: DateTime.new(2023, 06, 10, 8, 22, 00), duration: "2:30:00"},
  { departure_airport_id: 9, arrival_airport_id: 7, departure_time: DateTime.new(2023, 06, 11, 22, 34, 00), duration: "3:30:00"},
  { departure_airport_id: 7, arrival_airport_id: 2, departure_time: DateTime.new(2023, 07, 15, 14, 41, 00), duration: "2:14:00"},
  { departure_airport_id: 2, arrival_airport_id: 3, departure_time: DateTime.new(2023, 06, 11, 23, 00, 00), duration: "1:40:00"},
  { departure_airport_id: 1, arrival_airport_id: 5, departure_time: DateTime.new(2023, 06, 20, 9, 16, 00), duration: "1:50:00"},
  { departure_airport_id: 9, arrival_airport_id: 6, departure_time: DateTime.new(2023, 07, 01, 11, 25, 00), duration: "3:15:00"},
  { departure_airport_id: 6, arrival_airport_id: 4, departure_time: DateTime.new(2023, 06, 17, 10, 30, 00), duration: "1:10:00"},
  { departure_airport_id: 3, arrival_airport_id: 7, departure_time: DateTime.new(2023, 07, 02, 6, 40, 00), duration: "1:20:00"},
  { departure_airport_id: 1, arrival_airport_id: 10, departure_time: DateTime.new(2023, 06, 12, 16, 51, 00), duration: "8:40:00"},
  { departure_airport_id: 7, arrival_airport_id: 8, departure_time: DateTime.new(2023, 06, 23, 18, 32, 00), duration: "6:26:00"},
  { departure_airport_id: 5, arrival_airport_id: 4, departure_time: DateTime.new(2023, 07, 05, 18, 18, 00), duration: "1:20:00"},
  { departure_airport_id: 6, arrival_airport_id: 1, departure_time: DateTime.new(2023, 06, 14, 8, 9, 00), duration: "3:05:00"}
])