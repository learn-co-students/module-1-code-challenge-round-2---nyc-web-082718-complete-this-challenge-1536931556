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
    QueueItem.all.select do |qobj|
      qobj.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |qobj|
      qobj.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    queue_items.each do |qobj|
      if qobj.movie == movie
        qobj.rating == rating
      else
        QueueItem.new(movie, self, rating)
      end
    end
  end


  # queue_items

end
