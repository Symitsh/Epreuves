# ***** String dans string *****
# Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.
# Fonction utilisée : ( Ne pas utiliser la méthode .include? )

# Exemple : bonjour jour => true

def string_in_string?(string, substring)
  string.each_char.with_index do |char, index|
    return true if char == substring[0] && string[index, substring.length] == substring
  end
  false
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.length != 2
  puts('error')
  exit
end

puts string_in_string?(ARGV[0], ARGV[1])
