class Customer
  atrr_accessor :name, :age, :meals

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
    @meals = []
    @waiters = []
  end

  def self.all
    @@all
  end

  def new_meal(waiter)
    new_meal = Meal.new(waiter, self, total, tip)
    @meals << self
    @waiters << self
  end

  def meals
    @meals
  end

  def waiters
    @waiters
  end

end
