class Car
  def initialize(sound,engine)
    @engine = engine
    @sound = sound
  end
  def sound
    puts @sound
    @engine.sound
  end
end

class Engine
  def initialize(sound)
    @sound = sound
  end

  def sound
    puts @sound
  end
end

class ElectricEngine < Engine
  def initialize
    super("shhhh")
  end
end

class GasolineEngine < Engine
  def initialize
    super("brrrrrr")
  end
end
jaguar = Car.new("Shhhh",ElectricEngine.new)
mercedes = Car.new("brrrrrr",GasolineEngine.new)
puts "Electric car sound: "
jaguar.sound
puts "Gasoil car sound: "
mercedes.sound
