class Spaceship < Vehicle
  def launch(destination)
    # go towards destination
  end
end

ship = Spaceship.new
ship.launch

# Accessors

class Spaceship
  attr_accessor :destination, :name
  # attr_reader :destination
  # attr_writer :destination
end
