# 🔷 Superclass
class Vehicle
  attr_accessor :make, :model, :year, :vehicle_type

  def initialize(make, model, year, vehicle_type)
    @make = make
    @model = model
    @year = year
    @vehicle_type = vehicle_type
  end

  def get_type
    @vehicle_type
  end

  def details
    puts "Make: #{@make}, Model: #{@model}, Year: #{@year}, Type: #{@vehicle_type}"
  end
end

# 🚗 Subclass Car
class Car < Vehicle
  def initialize(make, model, year)
    super(make, model, year, "Car")
  end

  def details
    puts "🚗 Car - #{@make} #{@model} (#{@year})"
  end
end

# 🏍️ Subclass Bike
class Bike < Vehicle
  def initialize(make, model, year)
    super(make, model, year, "Bike")
  end

  def details
    puts "🏍️ Bike - #{@make} #{@model} (#{@year})"
  end
end

# 🚚 Subclass Truck
class Truck < Vehicle
  def initialize(make, model, year)
    super(make, model, year, "Truck")
  end

  def details
    puts "🚚 Truck - #{@make} #{@model} (#{@year})"
  end
end

# ▶️ Create objects
car = Car.new("Toyota", "Camry", 2022)
bike = Bike.new("Yamaha", "R15", 2021)
truck = Truck.new("Volvo", "FH", 2020)

# 📊 Display
car.details
bike.details
truck.details

# 🔍 Get type
puts car.get_type
puts bike.get_type
puts truck.get_type