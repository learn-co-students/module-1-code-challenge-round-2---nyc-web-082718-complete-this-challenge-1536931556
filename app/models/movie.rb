class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|item| item.movie == self}
  end

  def viewers
    queue_items.map{|item| item.viewer}
  end

  def average_rating
    rating_list = queue_items.map{|item| item.rating}
    counter = 0.0
    rating_list.each{|rating| counter += rating}
    counter / rating_list.count
  end

  def self.highest_rated
    movies = self.all
    averages = self.all.map{|movie| movie.average_rating}
    new_hash = Hash[movies.map {|x| [x, averages]}]
    #max_rate = new_hash.max_by { |h| h[:averages] }[:averages]
    new_hash
  end

end # end of class
