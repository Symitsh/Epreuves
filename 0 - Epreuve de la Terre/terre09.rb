# Racine carrée d’un nombre
# Créez un programme qui affiche la racine carrée d’un entier positif sans utiliser la méthode sqrt.

def square_root(num)
  if num.negative?
    puts 'erreur.'
    exit
  end
  sqrt = 0
  sqrt += 1 while sqrt * sqrt < num
  sqrt
end

if ARGV.length.zero? || ARGV.length > 1
  puts 'erreur.'
  exit
elsif /\D/.match(ARGV[0])
  puts 'erreur.'
  exit
end

puts square_root(ARGV[0].to_i)
