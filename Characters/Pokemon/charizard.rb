require_relative "../pokemon.rb"
require_relative "../PokemonTypes/fire_flying.rb"

class Charizard < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(78, level)
    @atk = calc_stat(84, level)
    @def = calc_stat(78, level)
    @spa = calc_stat(109, level)
    @spd = calc_stat(85, level)
    @spe = calc_stat(100, level)
  end
  include FireFlyingType
  def speak
    puts "#{@nickname}(Charizard)"
  end
  def stats
    puts "HP:#{@hp}/ATK:#{@atk}/DEF:#{@def}/SPA:#{@spa}/SPD:#{@spd}/SPE:#{@spe}"
  end
  def type_effects
    puts "Fire/Flying"
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
