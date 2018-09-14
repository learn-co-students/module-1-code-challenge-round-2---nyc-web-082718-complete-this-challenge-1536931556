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
    QueueItem.all.select do |qobj|
      qobj.movie == self
    end
  end

  def viewers
    queue_items.map do |qobj|
      qobj.viewer
    end
  end

  def average_rating
    ratings = queue_items.map do |qobj|
      qobj.rating
    end
    ratings.inject(0.0) { |sum, rating| sum + rating } / ratings.size
  end

  def self.highest_rated
    QueueItem.all.select do |qobj|
      qobj.average_rating
      binding.pry
    end
  end

end
