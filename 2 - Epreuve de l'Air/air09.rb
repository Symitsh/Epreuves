# ***** Rotation vers la gauche *****
# Créez un programme qui décale tous les éléments d’un tableau vers la gauche. Le premier élément devient le dernier à chaque rotation.
# (Ne pas utiliser la méthode .rotate ou .shift)
# Utilisez une fonction prototypée comme ceci :
# ma_fonction(array) {
#   votre algorithme
#	  return (new_array)
# }

# Exemple : ruby exo.rb "Michel" "Albert" "Thérèse" "Benoit" => "Albert" "Thérèse" "Benoit" "Michel"

def rotate_left(array)
  i = 0
  new_array = []
  array.length.times do
    new_array[i] = array[i + 1]
    i += 1
  end
  new_array[array.length - 1] = array[0]
  new_array
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size.zero?
  (puts 'error'
   exit)
end

array = ARGV

puts rotate_left(array).join(' ')
