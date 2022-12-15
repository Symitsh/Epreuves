#   ***** Concat *****
# Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères.
# Espacés d’un séparateur donné en dernier argument au programme.
# (Ne pas utiliser .concat ni .join)
# ma_fonction(string_to_cut, separator) {
#   votre algorithme
#	  return (tableau)
# }

# Exemple : ruby exo.rb "je" "teste" "des" "trucs" " " => "je teste des trucs"
# Exemple : ruby exo.rb "Bonjour" "comment" "allez" "vous" => "Bonjourvouscommentvousallez"

def concat(array, separator)
  i = 0
  string = ''
  array.length.times do
    string += array[i]
    string += separator if i < array.length - 1
    i += 1
  end
  string
end

# Afficher error et quitter le programme en cas de problèmes d'arguments
if ARGV.length.zero?
  puts 'Error'
  exit
end

separator = ARGV[ARGV.length - 1]
ARGV.delete_at(ARGV.length - 1)

puts concat(ARGV, separator)
