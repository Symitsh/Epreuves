# ***** Majuscule *****
# Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères.
# Les autres lettres devront être en minuscules.
# Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.
# ( Ne pas utiliser la méthode .capitalize )

# Exemple : "hello world" => "Hello World !"

def majuscule(string)
  result = ''
  string.each_char.with_index do |char, index|
    result << if index.zero? || string[index - 1].match?(/\s/)
                char.upcase
              else
                char.downcase
              end
  end
  result
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.empty? || ARGV[0].to_i.to_s == ARGV[0]
  puts('error')
  exit
end

puts majuscule(ARGV[0])
