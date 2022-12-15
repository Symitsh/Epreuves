# ***** Un seul à la fois *****
# Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.
# Sa comprend également les espaces.

# Exemple : ruby exo.rb "Hello milady,   bien ou quoi ??" => "Helo milady, bien ou quoi ?"

def avoid_identical_characters(string)
  string = string.split('')
  i = 0
  string.length.times do
    if string[i] == string[i + 1]
      string.delete_at(i + 1)
      i -= 1
    end
    i += 1
  end
  string.join('')
end

# Afficher error et quitter le programme en cas de problèmes d'arguments
if ARGV.length.zero?
  puts 'Error'
  exit
end

puts avoid_identical_characters(ARGV[0])
