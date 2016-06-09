class Car

  def initialize(noise, speed)
    @noise = noise
    @speed = speed
    @visited_cities = []

  end

  def self.print_sound
    puts 'sound'
  end

  def sound
    puts @noise
  end

  def accelerating
	puts "accelerating from #{@speed} to #{@speed+10} km/h"
  end

  def self.double_noise(car)
    2.times do
      car.sound
    end
  end

  def cities
    puts @visited_cities
  end

  def city_adder(city)
    @visited_cities << city
  end

  attr_reader
  attr_writer
  attr_accessor


ignacio_car = Car.new("Brooom", 25)
ignacio_car.accelerating
ignacio_car.sound
ignacio.double_noise
