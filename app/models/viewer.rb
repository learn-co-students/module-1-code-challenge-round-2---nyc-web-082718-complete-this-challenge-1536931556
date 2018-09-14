class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |item|
      item.viewer == self
    end
  end

  def queue_movies
    self.queue_items.map do |item|
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    new_movie = QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    queue = self.queue_items
    target_item = queue.find do |item|
      item.movie == movie
    end
    target_item.rating = 5
    target_item
  end

end
