require_relative "Characters/trainer.rb"
require_relative "Characters/Pokemon/blastoise.rb"
require_relative "Characters/Pokemon/charizard.rb"
require_relative "Characters/Pokemon/lapras.rb"
require_relative "Characters/Pokemon/pikachu.rb"
require_relative "Characters/Pokemon/snorlax.rb"
require_relative "Characters/Pokemon/venusaur.rb"
require_relative "Characters/Pokemon/pidgeot.rb"
require_relative "Characters/Pokemon/cloyster.rb"
require_relative "Characters/Pokemon/jolteon.rb"

reds_blastoise = Blastoise.new("Sir Shellsalot", 70, ["Hydro Pump", "Water Spout", "Blizzard", "Focus Blast"])
reds_charizard = Charizard.new("MC Fly", 70, ["Fire Blast", "Focus Blast", "Air Slash", "Dragon Pulse"])
reds_venusaur = Venusaur.new("Planto", 70, ["Leaf Storm", "Sludge Bomb", "Earthquake", "Sleep Powder"])
reds_lapras = Lapras.new("Dat Water boi", 69, ["Ice Beam", "Hydro Pump", "Ice Shard", "Thundebolt"])
reds_pikachu = Pikachu.new("Sgt Fluffle", 74, ["Volt Tackle", "Iron Tail", "Brick Break", "Fake Out"])
reds_snorlax = Snorlax.new("Cpt. Tiny", 69,["Body Slam", "Earthquake", "Crunch", "Seed Bomb"])
pokemonArr = [reds_blastoise, reds_charizard, reds_venusaur, reds_lapras, reds_pikachu, reds_snorlax]
red = Trainer.new("Red", "Champion", pokemonArr)
red.trainer_about
puts "\n        -------------------------"
puts "\n"
blues_blastoise = Blastoise.new("Gramps", 75, ["Hydro Pump", "Rain Dance", "Skull Bash", "Bite"])
blues_charizard = Charizard.new("Smell ya later", 75, ["Fire Blast", "Aerial Ace", "Slash", "Fire Spin"])
blues_venusaur = Venusaur.new("Ya snooze ya lose", 75, ["Solar Beam", "Synthesis", "Sunny Day", "Growth"])
blues_pidgeot = Pidgeot.new("Birb", 72, ["Aerial Ace", "Feather Dance", "Sand-Attack", "WhrilWind"])
blues_cloyster = Cloyster.new("1Shellyboi", 65, ["Ice Beam", "Spike Cannon", "Aurora Beam", "Clamp"])
blues_jolteon = Jolteon.new("2fast2cope", 70, ["Thunder", "Thunderbolt", "Quick Attack", "Pin Missle"])
pokemonArr2 = [blues_blastoise, blues_charizard, blues_venusaur, blues_pidgeot, blues_cloyster, blues_jolteon]
blue = Trainer.new("Blue", "Ace Trainer", pokemonArr2)
blue.trainer_about
