class Character
  attr_accessor :save
  def initialize(name, gender)
    @name = name
    @gender = gender
    @inventory = []
  end

  def save_game(room)
    @save = room
  end

  def look_around(where_i_am)
    if where_i_am.item != "" then puts "you pack the appearently life threatening #{where_i_am.item}"
    else puts "you have found nothing, I dont know why it surprises you..."
  end
    puts "you can go to this directions"
    a = 1
    where_i_am.connected.each do |directions|
      puts a.to_s + " " + directions.room_name
    a += 1
    end
  end
end
class Rooms
  attr_accessor :position,:item,:room_name,:description,:connected
  def initialize(room_name,description,item = "")
    @room_name = room_name
    @item = item
    @connected = []
    @description = description
  end
  def conector(room)
    @connected.push(room)
  end
end


puts "You are about to embark in a beautiful land of magic and wonderful travels, with unicorns and happyness... so what is your name my child?"
name = gets.chomp

puts "You know, I am not very good with people, could you tell me if you are a boy or a girl?(M/F)"
  gender = gets.chomp.upcase
while  (gender != "M" && gender != "F")
    puts gender
    puts "I am not asking you that, my child could you please stick to what I ask?"
  gender = gets.chomp.upcase
end
puts gender == "M" ? "Hello mr #{name}, are you ready to embark in the wonderful adventure that awaits to you?, well it is not like you have a choice" : "My lady #{name} you are about to join into a journey, that you cannot stop anymore"
puts "Oh I am so sorry for you #{name}, I forgot to tell you that I am just a voice in your head lying to itself, you have been awaken from a long sleep...,"
puts "you are blind my child and you live in a dungeon... life isn't easy for us now, is it?"

character = Character.new(name,gender)

r0 = Rooms.new("the hall of evil","you feel what you think are fungus and musk in the floor and humidity.. what did you expect in a dungeon...")
r1 = Rooms.new("the hall of putrefaction","it smells really bad.. what did you expect in a dungeon...","kopesh")
r2 = Rooms.new("the hall of agony","you feel under your hands as if there were nails or something sharp pointy,it feels bad but it doesnt hurts you...",)
r3 = Rooms.new("the hall of wings","you hear a constant flapping wich makes you think you might be close to freedom, but are they bats or birds?...",)
r4 = Rooms.new("the hall of chiquito","you hear a voice calling you fistro pecador de la pradera and you feel tempted to follow that voice...",)
r5 = Rooms.new("the hall of air","you feel the fresh air hitting your face and realise you have reached freedom, you open your eyes and realise you were not blind...just stupid",)

r0.conector(r1)
r1.conector(r0)

r1.conector(r2)
r2.conector(r1)

r1.conector(r3)
r3.conector(r1)

r2.conector(r4)
r4.conector(r2)

r4.conector(r5)

current_room = r0

while current_room.room_name != "the hall of air"
    puts "\n\n you have entered a room..." + current_room.room_name + " " + current_room.description
    puts "what would you like to do?(look_around,move)"
    action = gets.chomp
      if action.to_i <= current_room.connected.length && action.to_i != 0
    current_room = current_room.connected[action.to_i-1]
end
    if action == "x"
    character.look_around(current_room)
  end
  if action == "o"
    character.save_game(current_room)
    puts "your game is been saved"
  end
  if action == "v"
    current_room = character.save
    puts "your game is been loaded"
  end
end
puts "you win...nothing"
