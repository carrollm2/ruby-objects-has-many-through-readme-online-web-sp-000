class Waiter

  attr_accessor :name, :years_of_experience

  @@all = []

  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @@all << self
    @meals = []
  end

  def self.all
    @@all
  end

  def new_meal
    new_meal = Meal.new(self, customer, total, tip)
    @meals << self
  end

  def best_tipper

  end

end
