Given /^I want to buy "([^\"]*)" "([^\"]*)" of "([^\"]*)"$/ do |item_quantity, item_type, item_name|
  @item_name = item_name
  @item_quantity = item_quantity
end

When /^the price is normally "([^\"]*)"$/ do |item_price|
  @item = Item.new @item_name, item_price
end

Then /^my price is "([^\"]*)"$/ do |final_price|
  price = @inventory.price(@item.name).to_f*@item_quantity.to_f
  "$#{price}".should == final_price
end

Given /^the super market has an inventory$/ do
  @inventory = Inventory.new
end

When /^the super market has "([^\"]*)" "([^\"]*)" of "([^\"]*)" at "([^\"]*)"$/ do |item_quantity, item_type, item_name, item_price|
  item = Item.new item_name, item_price

  item_quantity.to_i.times do
    @inventory.add_item(item)
  end
end

When /^"([^\"]*)" are on sale for "([^\"]*)" for "([^\"]*)"$/ do |item_name, sale_quantity, sale_price|
  @inventory.apply_sale_to_item(item_name, sale_quantity, sale_price.gsub("$", ""))
end