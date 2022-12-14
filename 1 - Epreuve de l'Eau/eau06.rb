# ***** Majuscule sur deux *****
# Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères.
# Seule les lettres (A-Z, a-z) sont prises en compte.

# Exemple : "Hello World" => "HeLlO wOrLd !"

def majuscule_sur_deux(string)
  result = ''
  i = 0
  string.each_char do |char|
    if char.match(/[a-zA-Z]/)
      result << (i.even? ? char.upcase : char.downcase)
      i += 1
    else
      result << char
    end
  end
  result
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty? || ARGV[0].to_i.to_s == ARGV[0]
  puts('error')
  exit
end

puts majuscule_sur_deux(ARGV[0])
