# Trouver la Suisse (lol)
# Créez un programme qui prend en paramètre trois entiers et affiche la valeur du milieu.

# Méthode pour trouver la valeur du milieu
def middle_value(a, b, c)
  if a < b && b < c || c < b && b < a
    b
  elsif b < a && a < c || c < a && a < b
    a
  else
    c
  end
end

if ARGV.length != 3
  puts 'erreur.'
  exit
elsif /\D/.match(ARGV[0]) || /\D/.match(ARGV[1]) || /\D/.match(ARGV[2])
  puts 'erreur.'
  exit
elsif (ARGV[0] == ARGV[1]) || (ARGV[0] == ARGV[2]) || (ARGV[1] == ARGV[2])
  p 'erreur.'
  exit
end

puts middle_value(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i)
