require_relative "../pokemon.rb"
require_relative "../PokemonTypes/flying_normal.rb"

class Pidgeot < Pokemon
  def initialize (nickname, level, moves)
    @nickname = nickname
    @level = level
    @moves = moves
    @hp = calc_stathp(83, level)
    @atk = calc_stat(80, level)
    @def = calc_stat(75, level)
    @spa = calc_stat(70, level)
    @spd = calc_stat(70, level)
    @spe = calc_stat(101, level)
  end
  include FlyingNormalType
  def speak
    puts "#{@nickname}(Pidgeot)"
  end
  def stats
    puts "HP:#{@hp}/ATK:#{@atk}/DEF:#{@def}/SPA:#{@spa}/SPD:#{@spd}/SPE:#{@spe}"
  end
  def type_effects
    puts "Flying/Normal"
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
