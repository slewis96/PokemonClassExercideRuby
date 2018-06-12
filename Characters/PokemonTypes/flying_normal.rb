require_relative "../pokemon.rb"

module FlyingNormalType
  class Weaknesses
    def self.weakto
      puts "  x2 from: Electric, Rock"
    end
    def self.resists
      puts "  x0.5 from: Grass, Bug / x0 from: Ground, Ghost"
    end
  end
end
