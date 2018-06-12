require_relative "../pokemon.rb"
require_relative "../PokemonTypes/grass_poison.rb"

class Venusaur < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(80, level)
    @atk = calc_stat(82, level)
    @def = calc_stat(83, level)
    @spa = calc_stat(100, level)
    @spd = calc_stat(100, level)
    @spe = calc_stat(80, level)
  end
  include GrassPoisonType
  def speak
    puts "#{@nickname}(Venusaur)"
  end
  def stats
    puts "HP:#{@hp}/ATK:#{@atk}/DEF:#{@def}/SPA:#{@spa}/SPD:#{@spd}/SPE:#{@spe}"
  end
  def type_effects
    puts "Grass/Poison"
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
