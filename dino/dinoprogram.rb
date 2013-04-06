# Aziz your first assignment is almost complete. You just have to tweak some little things in this assignment.
# Add Heart and Stomach to Dino or Hadrosaur whatever you like. Its up to you. In other words. Dino would be
# composed of heart and stomach at min. It will have many other organs but we will limit to it.
# The last thing i want you to do is to play with it and experiement it.
# You now have the basic knowledge and you can move ahead. If you need any thing i am here.


class Dino

end

class Eat # this is a behavior or action. This should not be a class. 
  def meat
    puts "eats meat"
  end
  def plant
    puts "eats plants"
  end
end

class Meat
  attr_accessor :quantity, :unit
  def initialize(quantity)
    @quantity = quantity
    @unit = 'kg'
  end
end


class Plant
  
end


class Hadrosaur < Dino
  attr_accessor :height, :weight
  def initialize(height, weight)
    @height = height
    @weight = weight
  end

  def eat_meat(meat)
    puts("Dino eats meat of quantity #{meat.quantity}")
  end

  def walk
    
  end

  def fly
    
  end
end


class Organ
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Heart < Organ
end

class Stomach < Organ
end