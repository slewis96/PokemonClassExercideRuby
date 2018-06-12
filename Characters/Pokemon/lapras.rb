require_relative "../pokemon.rb"
require_relative "../PokemonTypes/ice_water.rb"

class Lapras < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(130, level)
    @atk = calc_stat(85, level)
    @def = calc_stat(80, level)
    @spa = calc_stat(85, level)
    @spd = calc_stat(95, level)
    @spe = calc_stat(60, level)
  end
  include IceWaterType
  def speak
    puts "#{@nickname}(Lapras)"
  end
  def stats
    puts "HP:#{@hp}/ATK:#{@atk}/DEF:#{@def}/SPA:#{@spa}/SPD:#{@spd}/SPE:#{@spe}"
  end
  def type_effects
    puts "Ice/Water"
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
