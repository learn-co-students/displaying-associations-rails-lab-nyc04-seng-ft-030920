# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "John Doe")
Artist.create(name: "James Madison")
Song.create(title: "Song A", artist_id: 1)
Song.create(title: "Song B", artist_id: 2)

puts "Seeded."