require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Hi")
m2 = Movie.new("Sup")
v1 = Viewer.new("Bob")
v2 = Viewer.new("Joe")
q1 = QueueItem.new(m1, v1, 5)
q2 = QueueItem.new(m1, v1, 1)
q3 = QueueItem.new(m1, v2, 2)
q4 = QueueItem.new(m2, v1, 6)
q5 = QueueItem.new(m2, v2, 8)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
