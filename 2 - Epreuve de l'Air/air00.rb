# ***** Split *****
# Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations, retours à la ligne)
# (Ne pas utiliser la méthode .split)
# Votre programme devra utiliser une fonction prototypée comme ceci :
# ma_fonction(string_à_couper, string_séparateur) {
#   votre algorithme
#	  return (tableau)
# }

def split(string_to_cut, separator)
  i = 0
  string_to_cut.length.times do
    string_to_cut[i] = ',' if string_to_cut[i] == separator
    i += 1
  end
  string_to_cut.split(',')
end

# Afficher error et quitter le programme en cas de problèmes d'arguments
if ARGV.length != 1
  puts 'Error'
  exit
end

puts split("#{ARGV[0]}", ' ')
