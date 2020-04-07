Artist.destroy_all
Song.destroy_all

fka_twigs = Artist.create(name: "FKA Twigs")
blood_orange = Artist.create(name: "Blood Orange")
daft_punk = Artist.create(name: 'Daft Punk')

fka_twigs.songs.create(title: "Water Me")
fka_twigs.songs.create(title: "cellophane")

blood_orange.songs.create(title: "Charcoal Baby")
blood_orange.songs.create(title: "Hope")

daft_punk.songs.create(title: 'The Grid')
daft_punk.songs.create(title: 'Voyager')