require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items
    
    # Refactor this code so that items is an array of openstructs
    # debug "def initialize: #{ @items.map {|item| item = OpenStruct.new(item)}}"  <---- (for exercism only)
    @items = @items.map {|item| item = OpenStruct.new(item)}
  end

  def item_names
    items.map { |item| item[:name] }.sort

    # Refactor the code in item_names to use the new block shortcut you've learnt rather than hashes
    # debug "\ndef item_names: #{@items.map(&:name).sort}"
    @items.map(&:name).sort
  end

  def total_stock
    items.sum do |item|
      item[:quantity_by_size].values.sum
    end

    # Refactor the code in total_stock use the OpenStruct's method, rather than referencing a hash
    # debug "\ndef total_stock1: #{items}"
    # debug "\ndef total_stock2: #{@items.sum { |item| (item.quantity_by_size).values.sum}}"
    @items.sum { |item| (item.quantity_by_size).values.sum}
  end
end