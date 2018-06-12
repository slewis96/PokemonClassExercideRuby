require_relative "../pokemon.rb"
require_relative "../PokemonTypes/water.rb"

class Blastoise < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(79, level)
    @atk = calc_stat(83, level)
    @def = calc_stat(100, level)
    @spa = calc_stat(85, level)
    @spd = calc_stat(105, level)
    @spe = calc_stat(78, level)
  end
  include WaterType
  def speak
    puts "#{@nickname}(Blastoise)"
  end
  def stats
    puts "HP:#{@hp}/ATK:#{@atk}/DEF:#{@def}/SPA:#{@spa}/SPD:#{@spd}/SPE:#{@spe}"
  end
  def type_effects
    puts "Water"
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
