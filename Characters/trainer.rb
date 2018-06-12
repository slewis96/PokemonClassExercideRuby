require_relative "../pokemon_character.rb"

class Trainer < PokemonCharacter
  def initialize (name, type, pokemon)
    @name = name
    @type = type
    @pokemon = pokemon
  end
  def battle
    puts "You can battle me!"
  end
  def trainer_about
    puts "_-_-_-*!#{@type} #{@name}'s Pokemon!*-_-_-_"
    @pokemon.each{|poke|
      puts "---"
      poke.summary
    }
  end
end
