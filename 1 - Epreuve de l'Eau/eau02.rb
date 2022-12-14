# ***** Paramètres à l’envers *****
# Créez un programme qui affiche ses arguments reçus à l’envers, avec un saut à la ligne à chaque argument.
# ( Sans utiliser: puts ARGV.reverse )

def reverse_args
  i = ARGV.length - 1
  while i >= 0
    puts ARGV[i]
    i -= 1
  end
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty?
  puts('error')
  exit
end

reverse_args
