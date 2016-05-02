module Flight

  def fly
    puts "I'm a #{self.class.name}, and I'm flying!"
  end

end


class Animal

  attr_reader :num_legs, :blood_type, :instinctive, :can_move

  def initialize(num_legs, blood_type)
    @num_legs = num_legs
    @blood_type = blood_type
    @instinctive = true
    @can_move = true
  end

  def warm_blooded?
    return "Yes, #{self.class.name}'s are warm blooded" if @blood_type == 'endothermic'
  end

  def cold_blooded?
    return "Yes, #{self.class.name}'s are cold blooded" if @blood_type == 'exothermic'
  end

end

class Mammal < Animal

  attr_reader :hair, :milk

  def initialize(num_legs, blood_type)
    super(2, 'endothermic')
    @hair = true
    @milk = true
  end

end

class Primate < Mammal

  attr_reader :opposable_thumbs

  def initialize
    super(2, 'endothermic')
    @opposable_thumbs = true
  end

end

class Bat < Mammal
  include Flight

  attr_reader :sonar, :can_fly

  def initialize
    super(num_legs, blood_type)
    @sonar = true
    @can_fly = true
  end

end


class Chimpanzee < Primate

  attr_reader :tools

  def initialize
    super
    @tools = true
  end

end

class Amphibian < Animal

  attr_reader :breathe_through_skin

  def initialize
    super(4, 'exothermic')
    @breathe_through_skin = true
    #birth_type = metamorphosis for amphibians
  end

end

class Frog < Amphibian

  attr_reader :croak

  def initialize
    super
    @croak = true
  end

end

class Bird < Animal
  include Flight
  attr_reader :feathers, :can_fly

  def initialize
    super(2, 'endothermic')
    @can_fly = true
    @feathers = true
  end
  
end

class Parrot < Bird

  attr_reader :speak
  
  def initialize
    super
    @speak = true
  end

end

#TEST CODE

@bat = Bat.new
@bat.fly

@chimp = Chimpanzee.new
puts @chimp.num_legs
puts @chimp.warm_blooded?

@bat = Bat.new
puts @bat.blood_type
puts @bat.hair
@bat.fly
puts @bat.warm_blooded?

@parrot = Parrot.new
@parrot.fly
puts @parrot.warm_blooded?

@frog = Frog.new
puts @frog.cold_blooded?
puts @frog.warm_blooded?
