# ***** Le roi des tris *****
# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri rapide (QuickSort).
# Utilisez une fonction prototypée comme ceci :
# my_quick_sort(array) {
#   votre algorithme
#	  return (new_array)
# }

# Exemple : ruby exo.rb 6 4 5 3 2 1 => 1 2 3 4 5 6

def quick_sort(array)
  return array if array.size <= 1

  pivot = array.pop
  left = []
  right = []
  array.each do |element|
    if element <= pivot
      left << element
    else
      right << element
    end
  end
  quick_sort(left) + [pivot] + quick_sort(right)
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size.zero?
  (puts 'error'
   exit)
end

puts quick_sort(ARGV).join(' ')
