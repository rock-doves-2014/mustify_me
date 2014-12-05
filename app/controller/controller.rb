require_relative '../../config/application'

class Controller

  def create_question
    track_answer = Track.all.sample
    @track_answer_name = track_answer.name
    @track_answer_artist = Artist.where(id: track_answer.artist_id).first.name
    rand_artists_choices
  end

  def rand_artists_choices
    @three_artists = []
    Artist.all.sample(3).each do |artist|
      @three_artists << artist.name
    end
    verify_choices
  end

  def verify_choices
    if @three_artists.include?(@track_answer_artist)
      rand_artists_choices
    else
      @three_artists << @track_answer_artist
    end
  end

  def display
    View.title
    View.show_track(@track_answer_name)
    View.show_choices(rand_artists_choices.shuffle)
    if View.user_input == ''
      View.show_answer(@track_answer_artist)
    end
  end

end

controller = Controller.new
controller.create_question
