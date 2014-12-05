require 'rspotify'

spot_artists = [
hip_hop_artist = RSpotify::Artist.search('Jay-Z').first,

rock_artist = RSpotify::Artist.search('The Rolling Stones').first,

pop_artist = RSpotify::Artist.search('One Direction').first,

country_artist = RSpotify::Artist.search('Tim McGraw').first,

classical_artist = RSpotify::Artist.search('Beethoven').first,

jazz_artist = RSpotify::Artist.search('Miles Davis').first,

randb_artist = RSpotify::Artist.search('Alicia Keys').first,

electronic_artist = RSpotify::Artist.search('Avicii').first
]


def populate_db_by_artist(artist_obj)
  create_data_and_tracks(artist_obj)
  others = artist_obj.related_artists
  others.each do |artist_obj_new|
    create_data_and_tracks(artist_obj_new)
  end
end

def create_data_and_tracks(artist_obj)
  artist = Artist.find_or_create_by(name: artist_obj.name)
  top_tracks = artist_obj.top_tracks(:US)
  top_tracks.each do |track|
    Track.create(name: track.name, artist_id: artist.id, album_name: track.album.name)
  end
end

spot_artists.each { |artist| populate_db_by_artist(artist) }

# rock_artist.related_artists.each do |artist|
#   p rock_artist.name
#   p "________________________________"
#   p artist.name
#   artist.top_tracks(:US).each do |track|
#     p track.name
#   end
# end

