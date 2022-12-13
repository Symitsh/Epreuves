# Nombre premier
# Créez un programme qui affiche si un nombre est premier ou pas.

def prime?(number)
  (2..number - 1).each do |i|
    return false if (number % i).zero?
  end
  true
end

if ARGV.length.zero? || ARGV.length > 1
  puts 'erreur.'
  exit
elsif /\D/.match(ARGV[0])
  puts 'erreur.'
  exit
end

puts prime?(ARGV[0].to_i) ? "Oui, #{ARGV[0]} est premier" : "Non, #{ARGV[0]} n'est pas premier"
