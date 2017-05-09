# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 	Track.create(title: 'Torquemada', artist: 'Avalanch', album: 'Llanto de un héroe')
# 	Track.create(title: 'The mother we share', artist: 'Chvrches', album: 'The Bones of What You Believe')
# 	Track.create(title: 'S.T.A.Y.', artist: 'Hans Zimmer', album: 'Interstellar Soundtrack')

track_list = [
	["Torquemada", "Avalanch", "Llanto de un héroe"],
	["The mother we share", "Chvrches", "The Bones of What You Believe"],
	["S.T.A.Y.", "Hans Zimmer", "Interstellar Soundtrack"],
]

puts "############# Tracks Created #############"
puts " "
track_list.each do |title, artist, album|
	Track.create(title: title, artist: artist, album: album)
	puts "Title: " << title << " Artist: " << artist << " Album: " << album
end
puts " "
puts "############# End of Process #############"

play_list = [
	["Heavy Metal", "30"],
	["Latin Pop", "20"],
	["Jazz Fusion", "10"],
]

puts "############# Playlists Created #############"
puts " "
play_list.each do |name, number_of_votes|
	Playlist.create(name: name, number_of_votes: number_of_votes)
	puts "Nmae: " << name << " Number of Votes: " << number_of_votes
end
puts " "
puts "############# End of Process #############"