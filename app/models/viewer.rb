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
    QueueItem.all.select do |queue_instance|
      queue_instance.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |queue_instance|
      queue_instance.movie
    end
  end

  def add_movie_to_queue(movie_instance)
    QueueItem.new(movie_instance, self)
  end

  def rate_movie(movie, rating)
    rating_movie = QueueItem.all.find do |queue_instance|
      queue_instance.movie == movie
    end
    if rating_movie == nil
      QueueItem.new(movie, self, rating)
    else
      rating_movie.rating = rating
    end
  end
  
end
