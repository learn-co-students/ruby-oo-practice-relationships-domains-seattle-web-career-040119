class Dessert

  attr_accessor :name, :bakery, :ingredient

  @@all = []

  def initialize(name, bakery, ingredient)
    @name = name
    @bakery = bakery
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def calories
    self.ingredient.map do |i|
      i.calories
    end.sum
  end

end