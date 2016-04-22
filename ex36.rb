def attic
  puts "You are in the attic it is dark."
  puts "Do you want to turn on the light or leave?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "light"
    puts "The boogie man doesn't need light to see you."
    puts "Now you can see the treasure chest is right in front of you."
    puts "You win!"
  elsif choice.include? "leave"
    puts "You'll never know what you are missing."
    parlor
  else
    puts "Try answering with light or leave."
    attic
  end
end

def basement
  puts "You are in the basement it is dark."
  puts "Do you want to turn on the light or leave?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "light"
    puts "Do you really want to see what is waiting for you in the dark?"
    puts "you see a thousand pairs of beady eyes!"
    puts "You loose!"
  elsif choice.include? "leave"
    puts "Perhaps it is the wiser choice?"
    parlor
  else
    puts "Try answering with light or leave."
    basement
  end
end

def dining_room
  puts "You are in the dining room, the table is set."
  puts "There is a fire in the fireplace."
  puts "In the center of the table is a covered platter,"
  puts "Do you open it or go back."

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "open"
    puts "You remove the cover and retrieve a flash light."
    @flash_light = true
    parlor
  elsif choice.include? "back"
    parlor
  else
    puts "Try answering with open or back."
    dining_room
  end
end

def parlor
  puts "You are back in the parlor."
  puts "Do you want to go up two flights of steps"
  puts "or down one flight of steps or to the right?"

  if @flash_light
    puts "You can read a sign on the wall"
    puts "that says BEWARE rats in the basement"
    puts "and treasure in the attic."
  end
  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "up"
    attic
  elsif choice.include? "down"
    basement
  elsif choice.include? "right"
    dining_room
  else
    puts "You may not leave until you enter up or down or right"
    parlor
  end
end

def start
  puts "You are in a haunted house."
  puts "Dangers unknown lurk here."
  puts "There is a treasure to be found."
  puts "You find yourself in a dimly lit parlor."
  puts "Do you want to go up two flights of steps"
  puts "or down one flight of steps or to the right?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "up"
    attic
  elsif choice.include? "down"
    basement
  elsif choice.include? "right"
    dining_room
  else
    puts "Try answering with up or down or right."
    start
  end
end

start
