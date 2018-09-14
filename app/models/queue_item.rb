class QueueItem

  attr_accessor :viewer, :movie, :rating
  # Probably don't need accessors for viewer and movie, just attr_reader. tweak later if time permitting and re-test

  @@all = []

  def initialize(movie, viewer, rating=nil)
    @movie = movie
    @viewer = viewer
    @rating = rating
    self.class.all << self
  end

  def self.all
    @@all
  end

end
