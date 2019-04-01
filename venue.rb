class Venue

  attr_reader :name, :songs, :rooms, :till


  def initialize(venue_name, songs, rooms)
    @venue_name = venue_name
    @songs = songs #venue has list of available songs.
    #Guests pick from this list to make playlist
    #for their room
    @rooms = rooms
    @till = 1000
  end

  def check_guest_into_room(guest, room)
    if room.guests.size < room.capacity
    room.guests.push(guest)
    else
    return "Sorry, that room is full."
    end
  end


  def check_guest_out_of_room(guest, room)
    room.guests.delete(guest)
  end

#this gives undefined method error
  # def charge_entry_fee(guest)
  #   guest.take_entry_fee_out_wallet
  #   @till += 10
  # end


end
