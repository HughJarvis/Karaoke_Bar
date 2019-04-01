class Guest

  attr_reader :name, :fave_song, :wallet


  def initialize(name, fave_song)
    @name = name
    @fave_song = fave_song
    @wallet = 50
  end



  def add_song_to_playlist(song, room)
    room.playlist.push(song)
  end

#This one throwing up undefined method error
  # def check_fave_song_available(guest)
  #   if @venue.songs.include?(guest.fave_song)
  #    return "Woohoo! They've got #{guest.fave_song}"
  #  else
  #    return "Awwww, they've not got #{guest.fave_song}"
  #  end
  # end

  def take_entry_fee_out_wallet
    @wallet -= 10
  end

end
