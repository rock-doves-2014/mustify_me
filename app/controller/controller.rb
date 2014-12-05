require_relative '../../config/application'

class Controller 
    
  track_answer = Track.all.sample
  track_answer_name = track_answer.name
  track_answer_artist = Artist.where(id: track_answer.artist_id)

  three_random_artists = Artist.all.sample(3)
  three_random_artists_names = three_random_artists.each do |artist|

  def rand_artists_choices
    three_artists = []
    three_random_artists = Artist.all.sample(3)
    three_random_artists_names = three_random_artists.each do |artist|
      three_artists << artist.name 
    end
    verify_choices
  end

  def verify_choices
    rand_artists_choices if three_random_artists.include?(track_answer_artist)
  end

end