# ***** Afficher le contenu *****
# Créez un programme qui affiche le contenu d’un fichier donné en argument.

# Exemple : ruby exo.rb "a.txt" => Je danse le mia

def display_content(file)
  File.open(file, 'r') do |i|
    i.each_line do |line|
      puts line
    end
  end
end

# Afficher error et quitter le programme en cas de problèmes d’arguments ou de fichier inacessible.
if ARGV.size.zero? || !File.exist?(ARGV[0])
  (puts 'error'
   exit)
end

display_content(ARGV[0])
