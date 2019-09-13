class Car

  attr_reader :make, :model, :running
  attr_accessor :color, :tint

  def initialize(args = {})
    @make = args[:make]
    @model = args[:model]
    @color = args[:color]
    @tint = args[:tint]
    @running = false
  end

  def start()
    @running = true
  end

  def stop()
    @running = false
  end
end

mustang = Car.new(make: "ford", model: "mustang's", color: "red", tint: true)

p mustang.make # => "ford"
mustang.start()
p mustang.running #=> true
mustang.stop()
p mustang.running #=> false
