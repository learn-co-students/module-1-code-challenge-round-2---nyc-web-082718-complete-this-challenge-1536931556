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
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    self.queue_items.map do |item|
      item.viewer.username
    end
  end

  def average_rating
    in_queue = self.queue_items
    ratings = in_queue.map do |item|
      item.rating
    end
    total = 0
    ratings.each do |rating|
      total += rating
    end
    total.to_f/ratings.length.to_f
  end

  def self.highest_rated
    hash = {}
    self.all.map do |movie|
      hash[movie] = movie.average_rating
    end
    new_hash = hash.sort_by {|key, value| value}
    new_hash.last
  end

end
