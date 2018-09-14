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
    QueueItem.all.select do |queue_instance|
      queue_instance.movie == self
    end
  end

  def viewers
    queue_items.map do |queue_instance|
      queue_instance.viewer
    end
  end

  def average_rating
    rating_total = 0
    rating_frequency = 0
    queue_items.each do |queue_instance|
      rating_total += queue_instance.rating
      rating_frequency += 1
    end
    rating_total.to_f / rating_frequency.to_f
  end

  def self.highest_rated
    movie = nil
    rating = 0
    self.all.each do |movie_instance|
      if movie == nil
        movie = movie_instance
        rating = movie_instance.average_rating
      elsif movie_instance.average_rating > rating
        movie = movie_instance
        rating = movie_instance.average_rating
      end
    end
    movie
  end
  # I understand that the above code can and should be simplified, but it works and I don't want to break it in the process of refactoring. Also, given a little extra time, I would have liked to figure this out so that these last two methods don't break if there's a nil value for a rating in the QueueInstance. Given it's just about pencils down and I don't want everything to break, I'm not going to write the code yet, but my logic is as follows:

  # In def average_rating
  # queue_items.each do |queue_instance|
  #   rating_total += queue_instance.rating
  #   rating_frequency += 1
  # end


end
