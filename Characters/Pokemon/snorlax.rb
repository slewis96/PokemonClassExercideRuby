require_relative "../pokemon.rb"
require_relative "../PokemonTypes/normal.rb"

class Snorlax < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(160, level)
    @atk = calc_stat(110, level)
    @def = calc_stat(65, level)
    @spa = calc_stat(65, level)
    @spd = calc_stat(110, level)
    @spe = calc_stat(30, level)
  end
  include NormalType
  def speak
    puts "#{@nickname}(Snorlax)"
  end
  def stats
    puts "HP:#{@hp}/ATK:#{@atk}/DEF:#{@def}/SPA:#{@spa}/SPD:#{@spd}/SPE:#{@spe}"
  end
  def type_effects
    puts "Normal"
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
