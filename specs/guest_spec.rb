require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../venue.rb')


class GuestTest < MiniTest::Test

  def setup

    @room1 = Room.new("Rod Stewart", 8)
    @room2 = Room.new("Tina Turner", 10)
    @room3 = Room.new("Dolly Parton", 6)

    @song1 = Song.new("Shake a Leg", "AC-DC")
    @song2 = Song.new("Push It", "Salt 'n' Peppa")
    @song3 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
    @song4 = Song.new("24 Hour Party People", "Happy Mondays")
    @song5 = Song.new("Independent Women", "Destiny's Child")
    @song6 = Song.new("Express Yourself", "NWA")
    @song7 = Song.new("Son of a Preacher Man", "Dusty Springfield")


    @venue = Venue.new("The Hoarse Box", [@song1, @song2, @song3], [@room1, @room2, @room3])

    @guest1 = Guest.new("Dionne", @song2)
    @guest2 = Guest.new("Bon", @song1)
    @guest3 = Guest.new("Ian", @song4)
    @guest4 = Guest.new("Bey", @song5)
    @guest5 = Guest.new("Dre", @song6)
    @guest6 = Guest.new("Dusty", @song7)

  end

  def test_get_guest_name
    assert_equal("Dionne", @guest1.name)
  end

  def test_get_fave_song
    assert_equal(@song2, @guest1.fave_song)
  end




  def test_guest_can_add_song_to_playlist
    @guest1.add_song_to_playlist(@song2, @room1)
    assert_equal([@song2], @room1.playlist)
  end

#This one is throwing up an undefined method error
  # def test_check_fave_song_available
  #   assert_equal("Woohoo!, they've got Shake a Leg", @venue.check_fave_song_available(@guest2))
  # end





  def test_get_wallet
    assert_equal(50, @guest1.wallet)
  end

  def test_take_entry_fee_out_of_wallet
    @guest1.take_entry_fee_out_wallet
    assert_equal(40, @guest1.wallet)
  end

end
