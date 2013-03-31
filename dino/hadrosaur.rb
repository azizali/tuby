class Hadrosaur < Dino
  def initalize()
    @eat = Eat.new()
  end
  def meat()
    @eat.meat()
  end
  def walk
    Movement.walk()
  end
  def fly
    Movement.fly()
  end
end