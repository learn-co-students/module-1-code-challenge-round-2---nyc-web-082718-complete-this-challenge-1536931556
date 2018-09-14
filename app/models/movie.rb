class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue_item|
      self == queue_item.movie
    end
  end

  def movie_viewers
    my_movies = QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
    my_movies.map do |movies|
      movies.viewer
    end

    # def average_rating
    #   count = 0
    #   sum = 0
    #   QueueItem.all.each do |queue_item|
    #     count += 1
    #     sum += queue_item
    #   end
    # #returns the average of all ratings for this instance of `Movie`
    # end

  end

end
# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
