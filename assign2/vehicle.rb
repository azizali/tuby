class Vehicle
  attr_accessor :speed, :luxury, :cost
  #attr_reader :speedUnit, :costUnit

  def initialize # speed, luxury, cost
    @speedUnit = 'km/h'
    @costUnit = '$'
    #@speed = speed
    #@luxury = luxury
    #@cost = cost
  end
end

class Car < Vehicle
  def initialize
    super()
    @speed =  150
    @luxury = 4
    @cost = 100
  end
  
end

class Train < Vehicle
  def initialize
    super()
    @speed =  120
    @luxury = 3
    @cost = 60
  end
end

class Bus < Vehicle
  def initialize
    super()
    @speed =  110
    @luxury = 2
    @cost = 50
  end
end


class Plan
  def initialize
    @workingDays = 20
  end
  
  def maxlux(budget, car, train, bus)
    
    @perdayBudget= budget/20
    
    if @perdayBudget > bus.cost
    
      carDays = budget/car.cost
      trainDays = 0
      busDays = 0
      #carLuxury = days * Car.luxury
      travelDays = carDays
      
      until travelDays >= @workingDays do

        if carDays<@workingDays
          carDays-=1
          budgetleft = budget - (carDays * car.cost)
          
          trainDays = budgetleft / train.cost
          budgetleft = budgetleft - (trainDays * train.cost)

          busDays = budgetleft / bus.cost
          budgetleft = budgetleft - (busDays * bus.cost)

          travelDays = carDays + trainDays + busDays
        end

      totalLuxury = car.luxury*carDays + train.luxury*trainDays + bus.luxury*busDays
      totalSpent = car.cost*carDays + train.cost*trainDays + bus.cost*busDays

      end
      puts "Use #{carDays} in car, #{trainDays} in train, and #{busDays} in bus for #{totalLuxury} luxury in #{car.costUnit}#{totalSpent} left #{car.costUnit}#{budgetleft}"
    else
      puts 'insufficient budget to come to work daily'
    end

  end
end