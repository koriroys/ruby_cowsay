require File.expand_path('../ruby_cowsay', __FILE__)

turtle = Cow.new({:cow => 'turtle'})

puts turtle.say("Here's the available faces!")
puts Cow.faces

puts turtle.say("Here's all of the available cows!")
puts Cow.cows

c = Cow.new({:face_type => 'paranoid'})
c.face_type = 'stoned'
puts c.say 'whoa dude.'
c.cow_type = 'turtle'
puts c.say 'I\'m a turtle!'

puts c.say %{This is a really long phrase that is clearly more than
             #{Cow::MAX_LINE_LENGTH} characters long. It should probably line
             wrap. And wrap a little more. Maybe even go to a fifth line.}
