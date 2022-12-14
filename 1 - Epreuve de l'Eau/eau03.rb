# ***** Suite de Fibonacci *****
# Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci.
# (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.
# Afficher -1 si le paramètre est négatif ou mauvais.

def fibonacci(number)
  return -1 if number.negative?
  return 0 if number.zero?
  return 1 if number == 1

  fibonacci(number - 1) + fibonacci(number - 2)
end

if ARGV[0].to_i.to_s != ARGV[0]
  puts(-1)
  exit
end

puts fibonacci(ARGV[0].to_i)
