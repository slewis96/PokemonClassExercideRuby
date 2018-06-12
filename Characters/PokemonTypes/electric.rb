require_relative "../pokemon.rb"

module ElectricType
  class Weaknesses
    def self.weakto
      puts "  x2 from: Ground"
    end
    def self.resists
      puts "  x0.5 from: Electric, Flying, Steel"
    end
  end
end
