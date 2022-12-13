# Puissance d’un nombre
# Créez un programme qui affiche le résultat d’une puissance.
# L’exposant ne pourra pas être négatif.

def power(base, exponent)
  base**exponent
end

if ARGV.length != 2
  puts 'erreur.'
  exit
elsif /\D/.match(ARGV[0]) || /\D/.match(ARGV[1])
  puts 'erreur.'
  exit
end

puts power(ARGV[0].to_i, ARGV[1].to_i)
