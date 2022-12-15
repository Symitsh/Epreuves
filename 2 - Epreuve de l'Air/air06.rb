# ***** Contrôle de pass sanitaire
# Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.
# On renvoie uniquement les éléments qui ne contiennent pas la chaîne de caractères.
# Utilisez une fonction prototypée comme ceci :
# ma_fonction(string_array, string) {
#   votre algorithme
#	  return (new_string_array)
# }

# Exemple : ruby exo.rb "Michel" "Albert" "Thérèse" "Benoit" "t" => Michel
# Exemple : ruby exo.rb "Michel" "Albert" "Thérèse" "Benoit" "a" => Michel, Thérèse, Benoit

# Remove from an array all elements that do not contain another string
def filter_items(string_array, string)
  string_array.delete_if { |element| element.to_s.downcase.match(/#{string}/) }
  string_array.join(', ')
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size <= 1
  (puts 'error'
   exit)
end

string_array = ARGV
string = ARGV[-1]

puts filter_items(string_array, string)
