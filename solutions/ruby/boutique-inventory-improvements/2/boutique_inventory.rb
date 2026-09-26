require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    # Refactor this code so that items is an array of openstructs
    @items = items.map {|item| item = OpenStruct.new(item)}
  end

  def item_names
    # Refactor the code in item_names to use the new block shortcut you've learnt rather than hashes
    items.map(&:name).sort
  end

  def total_stock
    # Refactor the code in total_stock use the OpenStruct's method, rather than referencing a hash
    items.sum do |item|
      item.quantity_by_size.values.sum
    end
  end
end