# Trié ou pas
# Créez un programme qui détermine si une liste d’entiers est triée ou pas.

def integer?(string)
  string.to_i.to_s == string
end

def sorted?(array)
  array == array.sort
end

if ARGV.length.zero?
  puts 'erreur.'
  exit
elsif ARGV.any? { |arg| !integer?(arg) }
  puts 'erreur.'
  exit
end

puts sorted?(ARGV.map(&:to_i)) ? 'Triée !' : 'Pas triée !'
