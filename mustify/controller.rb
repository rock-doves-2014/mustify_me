require 'rspotify'

hip_hop_artist = RSpotify::Artist.search('Jay-Z').first

rock_artist = RSpotify::Artist.search('The Rolling Stones').first

pop_artist = RSpotify::Artist.search('One Direction').first

country_artist = RSpotify::Artist.search('Tim McGraw').first

classical_artist = RSpotify::Artist.search('Beethoven').first

jazz_artist = RSpotify::Artist.search('Miles Davis').first

randb_artist = RSpotify::Artist.search('Alicia Keys').first

electronic_artist = RSpotify::Artist.search('Avicii').first 


hip_hop_artist.related_artists.each do |arist|
  RSpotify::Artist.search('artist.name').first
end

# rock_artist.related_artists.each do |artist|
#   p artist.name
# end

# pop_artist.related_artists.each do |artist|
#   p artist.name
# end

# country_artist.related_artists.each do |artist|
#   p artist.name
# end


# classical_artist.related_artists.each do |artist|
#   p artist.name
# end


# jazz_artist.related_artists.each do |artist|
#   p artist.name
# end

# randb_artist.related_artists.each do |artist|
#   p artist.name
# end

# electronic_artist.related_artists.each do |artist|
#   p artist.name
# end