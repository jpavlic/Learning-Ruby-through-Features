Given /^I want to buy a "([^\"]*)"$/ do |item_name|
  @item_name = item_name
end

When /^the price is "([^\"]*)"$/ do |item_price|
  @item = Item.new @item_name, item_price
end

Then /^my price is "([^\"]*)"$/ do |final_price|
  @item.price.should == final_price
end