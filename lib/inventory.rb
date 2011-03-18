class Inventory
  def initialize
    @items = Hash.new
  end

  def add_item item
    @items[item.name] = item
  end

  def apply_sale_to_item(item_name, sale_quantity, sale_price)
    item = Item.new(item_name, (sale_price.to_f/sale_quantity.to_f).to_s)
    @items[item_name] = item
  end

  def price(item_name)
    @items[item_name].price
  end
end