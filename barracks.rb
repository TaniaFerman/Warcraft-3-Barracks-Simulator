class Barracks < Footman
 
  attr_reader :gold, :food

  def initialize
@gold = 1000
@food = 80
  end

  def can_train_footman?
    food > 1 && gold > 134
  end

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2 
      return Footman.new #expect(footman).to be_an_instance_of(Footman)
    end
  end

  def can_train_peasant?
    food > 4 && gold > 89
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5 
      return Peasant.new
    end
  end

end
