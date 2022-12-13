# Taille d’une chaîne
# Créez un programme qui affiche le nombre de caractères d’une chaîne de caractères passée en argument sans utiliser la méthode length.

def string_length(str)
  length = 0
  str.each_char { length += 1 }
  length
end

if ARGV.length.zero? || ARGV.length > 1
  puts 'erreur.'
  exit
elsif /\d/.match(ARGV[0])
  puts 'erreur.'
  exit
end

puts string_length(ARGV[0])
