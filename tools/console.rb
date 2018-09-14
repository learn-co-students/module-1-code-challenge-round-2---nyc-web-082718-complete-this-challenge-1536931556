require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Movie.new("Jurassic Park")
m2 = Movie.new("Lord of the Rings")
m3 = Movie.new("Harry Potter")

v1 = Viewer.new("bobross")
v2 = Viewer.new("tattooguy")
v3 = Viewer.new("bestsabrina")

qi1 = QueueItem.new(v1, m2, 5)
qi2 = QueueItem.new(v2, m1, 4)
qi3 = QueueItem.new(v2, m3, 4)
qi4 = QueueItem.new(v3, m3, 3)

# v3.add_movie_to_queue(m1)
# v3.add_movie_to_queue(m2)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
