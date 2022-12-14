# ***** Différence minimum absolue *****
# Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué 
# uniquement de nombres. Nombres négatifs acceptés.

# Exemple : 5 1 19 21 => 2
# Exemple : 20 5 1 19 21 => 1
# Exemple : -8 -6 4 => 2

def difference_minimum_absolue(array)
  result = []
  array.each_with_index do |item1, index1|
    array.each_with_index do |item2, index2|
      next if index1 == index2

      result << (item1.to_i - item2.to_i).abs
    end
  end
  result.min
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty? || ARGV.any? { |i| i.to_i.to_s != i }
  puts('error')
  exit
end

puts difference_minimum_absolue(ARGV)
