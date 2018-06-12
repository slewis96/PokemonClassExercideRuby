require_relative "../pokemon.rb"

module GrassPoisonType
  class Weaknesses
    def self.weakto
      puts "  x2 from: Fire, Ice, Flying"
    end
    def self.resists
      puts "  x0.5 from: Water, Electric, Fighting, Fairy / x0.25 from: Grass"
    end
  end
end
