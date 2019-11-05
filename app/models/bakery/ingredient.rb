class Ingredient

  attr_accessor :name, :calories

  @@all = []

  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def dessert
    Dessert.all.find_all do |dessert|
      dessert.ingredient.include?(self)
    end
  end

  def bakery
    dessert.map do |dessert|
      dessert.bakery
    end
  end


  def self.find_all_by_name(ingredient_name)
    self.all.find_all do |ingredient|
      # binding.pry
      ingredient.name.include?(ingredient_name)
    end
  end

end