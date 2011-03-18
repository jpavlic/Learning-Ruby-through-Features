class Item
  attr_reader :name, :price

  def initialize name, price
    @name = name
    @price = price.gsub("$", "")
  end

  def to_s
    "$#{price}"
  end
end