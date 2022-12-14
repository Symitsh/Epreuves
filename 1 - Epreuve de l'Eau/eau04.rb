# ***** Prochain nombre premier *****
# Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

def next_prime(number)
  return 2 if number < 2

  number += 1
  number += 1 until prime?(number)
  number
end

def prime?(number)
  return false if number < 2

  (2..Math.sqrt(number)).each do |i|
    return false if (number % i).zero?
  end
  true
end

# Afficher -1 si le paramètre est négatif ou mauvais.
if ARGV[0].to_i.to_s != ARGV[0]
  puts(-1)
  exit
end

puts next_prime(ARGV[0].to_i)
