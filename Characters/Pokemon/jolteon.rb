require_relative "../pokemon.rb"
require_relative "../PokemonTypes/electric.rb"

class Jolteon < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(65, level)
    @atk = calc_stat(65, level)
    @def = calc_stat(60, level)
    @spa = calc_stat(110, level)
    @spd = calc_stat(95, level)
    @spe = calc_stat(130, level)
  end
  include ElectricType
  def speak
    puts "#{@nickname}(Jolteon)"
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
