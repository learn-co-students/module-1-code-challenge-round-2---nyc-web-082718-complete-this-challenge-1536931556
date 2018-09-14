class QueueItem

  attr_accessor :movie, :viewer, :movie_rating

  @@all = []

  def initialize(movie, viewer, movie_rating)
    @movie = movie
    @viewer = viewer
    @movie_rating = movie_rating
    @@all << self
  end

  def self.all
    @@all
  end

end
