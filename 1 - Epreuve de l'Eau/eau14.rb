# ***** Par ordre Ascii *****
# Créez un programme qui trie les éléments donnés en argument par ordre ASCII.
# ( Ne pas utiliser la méthode .sort_by )

# Exemple : Alfred Momo Gilbert => Alfred Gilbert Momo
# Exemple : A Z E R T Y => A E R T Y Z

def ascii_sort(array)
  result = []
  array.each do |item|
    result << item
    result.sort!
  end
  result
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty?
  puts('error')
  exit
end

puts ascii_sort(ARGV).join(' ')
