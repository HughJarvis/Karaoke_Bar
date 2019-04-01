class Room

  attr_reader :name, :guests, :capacity, :playlist

  def initialize(name, capacity)
    @name = name
    @guests = [] #empty array into which guests are checked
    @capacity = capacity
    @playlist = [] #empty array to which guests add songs
    #picked from venue's song list
  end





end
