
def populate_db_by_artist(name)
  Artist.create_data_and_track(name: name)
  others = find_similar_to(name)
  others.each{ |art| Artist.create_data_and_track(art) }
end

def create_data_and_track

end

