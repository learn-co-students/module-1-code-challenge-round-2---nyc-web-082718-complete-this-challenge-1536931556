class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|item| item.viewer == self}
  end

  def queue_movies
    queue_items.map{|item| item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self, 0)
  end

  def rate_movie(movie, rating)
    QueueItem.new(movie, self, rating)
  end
end # end of class
