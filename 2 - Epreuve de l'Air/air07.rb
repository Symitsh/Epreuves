# ***** Insertion dans un tableau trié *****
# Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant.
# Le dernier argument est l’élément à ajouter.
# (Ne pas utiliser la méthode .sort)
# Utilisez une fonction prototypée comme ceci :
# ma_fonction(array, new_element) {
#   votre algorithme
#	  return (new_array)
# }

# Exemple : ruby exo.rb 1 3 4 2 => 1 2 3 4
# Exemple : ruby exo.rb 10 20 30 40 50 60 70 90 33 => 10 20 30 33 40 50 60 70 90

def insert(array, new_element)
  i = 0
  array.length.times do
    if array[i] > new_element
      array.insert(i, new_element)
      break
    end
    i += 1
  end
  array
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size <= 1
  (puts 'error'
   exit)
end

array = ARGV
new_element = ARGV[-1]
array.pop

puts insert(array, new_element).join(' ')
