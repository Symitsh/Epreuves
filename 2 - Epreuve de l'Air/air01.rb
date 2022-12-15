#  ***** Split en fonction *****
# Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.
# Ne pas faire apparaitre le séparateur dans le tableau lors de l'affichage.
# Votre programme devra utiliser une fonction prototypée comme ceci :
# ma_fonction(string_to_cut, separator) {
#   votre algorithme
#	  return (tableau)
# }

# Exemple : ruby exo.rb "Crevette magique dans la mer des étoiles" "la" => "Crevette magique dans" " mer des étoiles"

def split(string_to_cut, separator)
  tableau = string_to_cut[0]
  cancel_separators(tableau, separator)
  tableau
end

def cancel_separators(tableau, separator)
  tableau.each_line(separator, chomp: true) do |element|
    next if tableau[element] == separator

    puts tableau[element]
  end
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size != 2
  (puts 'error'
   exit)
end

string_to_cut = ARGV
separator = ARGV[1]

split(string_to_cut, separator)
