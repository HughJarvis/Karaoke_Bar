class Venue

  attr_reader :name, :songs, :rooms

  def initialize(venue_name, songs, rooms)
    @venue_name = venue_name
    @songs = songs
    @rooms = rooms
  end

  def check_guest_into_room(guest, room)
    room.guests.push(guest)
  end


end
