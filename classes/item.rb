class Item
  def initialize(name)
    self.name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name + "......"
  end
end

i = Item.new("Chair")
p i.name