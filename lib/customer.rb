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

  def new_meal
    new_meal = Meal.new(waiter, customer, total, tip)
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
