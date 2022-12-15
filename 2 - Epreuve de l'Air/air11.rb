# ***** Afficher une pyramide *****
# Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.

# Exemple : ruby exo.rb O 5 =>
#     O
#    OOO
#   OOOOO
#  OOOOOOO
# OOOOOOOOO

def pyramid(character, number)
  number.times do |i|
    print ' ' * (number - i)
    puts character * (2 * i + 1)
  end
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size.zero? || ARGV[1].to_i.zero?
  (puts 'error'
   exit)
end

pyramid(ARGV[0], ARGV[1].to_i)
