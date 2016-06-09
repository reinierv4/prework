class Player
  attr_accessor :name,:gender,:save
  def initialize(name,gender,job)
  @name = name
  @gender = gender
  @save = [2,2]
  @exit = false
  @inventory = []
  end
end

class RoomDungeon

  def initialize(player,event,exits)
    @player = player
    @event = event
    @item = item
    @exits = []
  end

  def launch_event
    case @event
    when "black"
        puts "you encounter death herself you can't see her but dont worry, she makes sure you know, what would you like to do?"
        puts "A.you remain silent and accept your pityful and coward end,B.You attemt to crawl misserably towards another room hoping to make it"
        black = gets.chomp.upcase
          if black != "A" do
              puts "The offended death, breaks your neck and collects your head... it is indeed an unfair world..."
              @player.exit = true
            else
              puts "Death, shows compassion of your pitiful soul and lets you go with a warning"
          end
      when "red"
        puts "you have found a weapon, a kopesh no less but you dont really know you can't see it... and you are afraid to touch something that is not the handle"
        puts "A.you pick the weapon up and you store it somewhere B.you dont want to carry things that could kill you by accident"
        red = gets.chomp.upcase
          while red != "A" && red != "B" do
              puts "im sorry could you repeat?"
              red = gets.chomp.upcase
            end

        if red = "A"
            @player.inventory.push(kopesh)
          else
            puts "better leave it there picking up dust"
          end

      when "blue"
            puts "Nothing happens, you are dissapointed but you think a little more and realise you are one step closer to the glorious freedom"
      when "white"
            puts "A white angel appears and gives the Iron Axe to marcos, thats right, not to you but to marcos... life is unfair again isnt it?"
        end
  end

  def n
    @player.save[1] += 1
    puts "you walk into the north and you are in a dark room, as always in your life... @{}"
  end
  def e
    @player.save[0] += 1
    puts "you walk into the west and you cant see remember?... @{}"
  end

  def w
    @player.save[0] = @player.save[0] - 1
    puts "you though for a moment you were about to see something but false alarm... @{}"
  end

  def s
    @player.save[1] = @player.save[1] - 1
    puts "you are blind... @{}"
  end

  def direction #aqui se delimitan las direcciones que se pueden tomar y lo que se puede osea el mapa
    if
    puts you can go to
  end
end


puts "welcome to Gate of Condemorl, lets create your character, so first things first child, what is your name?"
name = gets.chomp

puts "so your name is #{name}... tell me child,my eyes are old and tired, are you a boy or a girl?(boy/girl)"
gender = gets.chomp


while gender != "boy" && gender != "girl" do
    puts "im sorry could you repeat?"
    gender = gets.chomp
  end
if gender = "boy"
  puts "hello there mr #{name}, we are almost done here with the character creation,
  come here so I can give you a quantum paliza...err I mean what is your job?"
elsif gender = "girl"
  puts "hello there ms #{name}, we are almost done here with your creation my child"
end

Saved_Character = Player.new(name,gender)

puts "life is unfair and you discover you have been born in a dungeon, boomer ,
now you have to get out.., you are blind... I am seriously sorry for you, I dont even exist,
I am just a voice in your head because you are very lonely..."
