require_relative 'animal'

class Bird < Animal
  attr_accessor :wing_span

  def initialize(name, species, wing_span)
    super(name, species)
    @wing_span = wing_span
  end

  def bird_info
    basic_info + " with a #{wing_span}cm wing span"
  end
end
