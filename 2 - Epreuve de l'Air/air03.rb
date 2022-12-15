# ***** Chercher l’intrus *****
# Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.

# Exemple : ruby exo.rb 1 2 3 4 5 4 3 2 1 => 5
# Exemple : ruby exo.rb bonjour monsieur bonjour => monsieur
# Exemple : ruby exo.rb Ici il fait beau ici il fait => beau

def intrus(list)
  list.each do |element|
    next if list.count(element) > 1

    return element
  end
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size.zero?
  (puts 'error'
   exit)
end

puts intrus(ARGV)
