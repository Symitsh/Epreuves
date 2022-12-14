# ***** Entre min et max *****
# Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant.
# Min inclus, max exclus.

# Exemple: 20 25 => 20, 21, 22, 23, 24
# Exemple: 25 20 => 20, 21, 22, 23, 24

def between(min, max)
  min, max = max, min if min > max

  result = []
  (max - min).times do |i|
    result << min + i
  end
  puts result.join(', ')
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty? || ARGV.length != 2 || ARGV[0].to_i.to_s != ARGV[0] || ARGV[1].to_i.to_s != ARGV[1]
  puts('error')
  exit
end

between(ARGV[0].to_i, ARGV[1].to_i)
