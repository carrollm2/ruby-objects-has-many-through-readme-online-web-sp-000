require 'pry'

class Customer
  attr_accessor :name, :age, :meals

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

  def new_meal(waiter, total, tip)
    new_meal = Meal.new
    new_meal.waiter = waiter
    new_meal.customer = self
    new_meal.total = total
    new_meal.tip = tip
    @meals << new_meal
    @waiters << new_meal.waiter
  end

  def meals
    @meals
  end

  def waiters
    @waiters
  end

end
