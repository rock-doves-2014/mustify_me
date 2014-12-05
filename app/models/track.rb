class Track < ActiveRecord::Base

  validates :name, presence: true
  belongs_to :artist
  validate :artist_id, assign_id_by_artist(artist.name)

  def assign_id_by_artist(artist_name)
    Artist.find_or_create_by(name: artist_name).id
  end

end
