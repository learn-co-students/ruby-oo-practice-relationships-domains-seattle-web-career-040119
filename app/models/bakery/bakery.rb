class Bakery

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def ingredients
    desserts.map do |dessert|
      dessert.ingredient
    end.flatten
  end

  def average_calories
    ingredients.map do |ingredient|
      ingredient.calories
    end.sum/ingredients.length.to_f
  end

  def shopping_list
    ingredients.map do |ingredient|
      ingredient.name
    end
  end

end