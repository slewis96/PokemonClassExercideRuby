require_relative "../pokemon.rb"
require_relative "../PokemonTypes/electric.rb"

class Pikachu < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(35, level)
    @atk = calc_stat(55, level)
    @def = calc_stat(30, level)
    @spa = calc_stat(50, level)
    @spd = calc_stat(40, level)
    @spe = calc_stat(90, level)
  end
  include ElectricType
  def speak
    puts "#{@nickname}(Pikachu)"
  end
  def stats
    puts "HP:#{@hp}/ATK:#{@atk}/DEF:#{@def}/SPA:#{@spa}/SPD:#{@spd}/SPE:#{@spe}"
  end
  def type_effects
    puts "Electric"
    puts "  Weaknesses:"
    Weaknesses.weakto
    Weaknesses.resists
  end
  def summary
    self.speak
    self.stats
    print "#{@moves} \n"
    self.type_effects
  end
end
