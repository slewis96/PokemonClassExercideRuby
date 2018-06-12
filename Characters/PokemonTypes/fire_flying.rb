require_relative "../pokemon.rb"

module FireFlyingType
  class Weaknesses
    def self.weakto
      puts "  x2 from: Water, Electric / x4 from: Rock"
    end
    def self.resists
      puts "  x0.5 from: Fire, Fighting, Steel / x0.25 from: Grass, Bug / x0 from: Ground"
    end
  end
end
