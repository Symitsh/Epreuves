# ***** Tri à bulle *****
# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri à bulle.

def bubble_sort(array)
  array.each_with_index do |item, index|
    next if index == array.size - 1

    next unless item > array[index + 1]

    array[index] = array[index + 1]
    array[index + 1] = item
    bubble_sort(array)
  end
  array
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty? || ARGV.any? { |i| i.to_i.to_s != i }
  puts('error')
  exit
end

puts bubble_sort(ARGV.map(&:to_i)).join(' ')
