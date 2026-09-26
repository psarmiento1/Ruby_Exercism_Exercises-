class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    # returns all the values of the key (name) for each index and sorted alphabetically
    # ex [ "string", "string", "string"]
    @items.map { |item| item[:name]}.sort
  end

  def cheap
    # return any items that cost less than $30
    # ex [ {key: value, key: value}, {key: value, key: value}, {key: value, key: value}]
    @items.select { |item| item[:price] < 30}
  end

  def out_of_stock
    #  return any items that have no stock (where quantity_by_size is empty)
    @items.select { |item| item[:quantity_by_size] == {}}
  end

  def stock_for_item(name)
    # return the stock of an item by its name
    #=> {s: 1, xl: 4}
    @items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  def total_stock
    debug "def total_stock1: #{@items.map { |item| item[:quantity_by_size]}}"
    debug "def total_stock2: #{@items.map { |item| item[:quantity_by_size].values}}"
    debug "def total_stock3: #{@items.sum { |item| item[:quantity_by_size].values.sum}}"
    
    # calculates the total amount of items in your storeroom
    @items.sum { |item| item[:quantity_by_size].values.sum}
  end

  private
  attr_reader :items
end
