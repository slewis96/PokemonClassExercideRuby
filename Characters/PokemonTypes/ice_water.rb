require_relative "../pokemon.rb"

module IceWaterType
  class Weaknesses
    def self.weakto
      puts "  x2 from: Electric, Grass, Fighting"
    end
    def self.resists
      puts "  x0.5 from: Water / x0.25 from: Ice"
    end
  end
end
