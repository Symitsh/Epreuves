# ***** Chiffres only *****
# Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.

def chiffres_only?(string)
  string.each_char do |char|
    return false unless char.match?(/[0-9]/)
  end
  true
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty?
  puts('error')
  exit
end

puts chiffres_only?(ARGV[0])
