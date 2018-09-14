require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Movie.new("Shawshank")
m2 = Movie.new("Skyfall")
m3 = Movie.new("Two Towers")
m4 = Movie.new("Mission Impossible")

v1 = Viewer.new("Ollie")
v2 = Viewer.new("Eddie")
v3 = Viewer.new("Jordan")
v4 = Viewer.new("Sean")

q1 = QueueItem.new(m1, v1, 5)
q2 = QueueItem.new(m1, v2, 5)
q3 = QueueItem.new(m2, v3, 2)
q4 = QueueItem.new(m3, v4, 2)
q5 = QueueItem.new(m1, v3, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
