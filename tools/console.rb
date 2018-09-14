require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("Jordan")
v2 = Viewer.new("Larry")
v3 = Viewer.new("Craig")

m1 = Movie.new("Titanic")
m2 = Movie.new("Sandlot")
m3 = Movie.new("Little Giants")

q1 = QueueItem.new(m3, v2, 5)
q2 = QueueItem.new(m1, v1, 4)
q3 = QueueItem.new(m1, v2, 3)
q4 = QueueItem.new(m2, v3, 4)
q5 = QueueItem.new(m2, v3, 2)
q6 = QueueItem.new(m2, v1)
q7 = QueueItem.new(m3, v3, 5)


q1 =

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
