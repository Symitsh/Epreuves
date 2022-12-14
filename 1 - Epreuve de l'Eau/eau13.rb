# ***** Tri par sélection *****
# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri par sélection.

def selection_sort(array)
  result = []
  array.size.times do
    result << array.min
    array.delete_at(array.index(array.min))
  end
  result
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty? || ARGV.any? { |i| i.to_i.to_s != i }
  puts('error')
  exit
end

puts selection_sort(ARGV.map(&:to_i)).join(' ')
