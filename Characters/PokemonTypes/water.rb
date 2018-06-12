require_relative "../pokemon.rb"

module WaterType
  class Weaknesses
    def self.weakto
      puts "  x2 from: Electric, Grass"
    end
    def self.resists
      puts "  x0.5 from: Fire, Water, Ice, Steel"
    end
  end
end
