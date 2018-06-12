require_relative "../pokemon_character.rb"

class Pokemon < PokemonCharacter
  def uses
    puts "You can catch, battle, and trade with me!"
  end
  def trade
    puts "You can trade me!"
  end
  def release
    puts "You can release me!"
  end
  def calc_stathp(base, level)
    ((base*2) * level/100)+ level + 10
  end
  def calc_stat(base, level)
    ((base*2) * level/100)+5
  end
end
