=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.
=end

class DndCharacter
  def self.modifier(num)
    # character's initial hitpoints are 10 + your character's constitution modifier.
    # character's constitution modifier is found by subtracting 10 from your character's 
    # constitution, divide by 2 and round down.
    # Ex. constitution = 3
    # 3 - 10 = -7 / 2 = -3.5
    ((num - 10) / 2).floor
  end
  # character = DndCharacter.new
  def initialize
    # Your code here
    @constitution_array = []
    @strength_array = []
    @dexterity_array = []
    @intelligence_array = []
    @wisdom_array = []
    @charisma_array = []
  end
  
  def constitution
    while @constitution_array.size < 4
      @constitution_array << rand(1..6)
    end
    @constitution_array.freeze
    @constitution_array.max(3).sum
  end

  def strength
    while @strength_array.size < 4
      @strength_array << rand(1..6)
    end
    @strength_array.freeze
    @strength_array.max(3).sum
  end

  def dexterity
    while @dexterity_array.size < 4
      @dexterity_array << rand(1..6)
    end
    @dexterity_array.freeze
    @dexterity_array.max(3).sum
  end

  def intelligence
    while @intelligence_array.size < 4
      @intelligence_array << rand(1..6)
    end
    @intelligence_array.freeze
    @intelligence_array.max(3).sum
  end

  def wisdom
    while @wisdom_array.size < 4
      @wisdom_array << rand(1..6)
    end
    @wisdom_array.freeze
    @wisdom_array.max(3).sum
  end 

  def charisma
    while @charisma_array.size < 4
      @charisma_array << rand(1..6)
    end
    @charisma_array.freeze
    @charisma_array.max(3).sum
  end

  def hitpoints
    10 + DndCharacter.modifier(constitution)
  end
end
