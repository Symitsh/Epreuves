# Divisions
# Créez un programme qui affiche le résultat et le reste d’une division entre deux nombres.

number1 = ARGV[0].to_i
number2 = ARGV[1].to_i

if number2 <= 0
  puts 'Erreur'
elsif number1 / number2 <= 0
  puts 'Erreur'
else
  puts "Résultat : #{number1 / number2}"
  puts "Reste : #{number1 % number2}"
end
