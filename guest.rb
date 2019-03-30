class Guest

  attr_reader :name, :fave_song

  def initialize(name, fave_song)
    @name = name
    @fave_song = fave_song
  end


  def add_song_to_playlist(song, room)
    room.playlist.push(song)
  end

end
