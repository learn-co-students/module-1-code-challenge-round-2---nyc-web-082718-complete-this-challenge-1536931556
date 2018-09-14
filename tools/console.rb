require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")
m4 = Movie.new("movie4")

v1 = Viewer.new("viewer1")
v2 = Viewer.new("viewer2")
v3 = Viewer.new("viewer3")
v4 = Viewer.new("viewer4")

qi1 = QueueItem.new(m3, v3, 4)
qi2 = QueueItem.new(m1, v2, 5)
qi3 = QueueItem.new(m2, v3, 1)
qi4 = QueueItem.new(m1, v4, 5)
qi5 = QueueItem.new(m4, v1, 3)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
