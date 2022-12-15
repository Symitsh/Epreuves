# ***** Sur chacun d’entre eux *****
# Créez un programme qui est capable de reconnaître et de faire une opération (addition ou soustraction) sur chaque entier d’une liste.

# Exemple : ruby exo.rb 1 2 3 4 5 "+2" => 3 4 5 6 7
# Exemple : ruby exo.rb 10 11 12 20 "-5" => 5 6 7 15

def operation(list, operation)
  i = 0
  list.length.times do
    list[i] = list[i].to_i
    operation[0] == '+' ? list[i] += operation[1].to_i : list[i] -= operation[1].to_i
    i += 1
  end
  list
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size.zero?
  (puts 'error'
   exit)
end

puts operation(ARGV[0..ARGV.length - 2], ARGV[ARGV.length - 1]).join(' ')
