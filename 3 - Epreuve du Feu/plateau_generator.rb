# Programme permettant de généré un plateau avec en paramètre :
# L'axe x et y ainsi que la densité d'obstable
# Exemple: `ruby plateau_generator.rb 10 9 1`

# La première ligne du fichier 'plateau' contient les informations pour lire la carte:
# Nombre de lignes du plateau, caractères pour “vide”, “obstacle” et “plein”.
# exemple: 9.xo

def plateau_generator
  # Vérifie si le fichier plateau existe déjà sinon le crée
  File.new('plateau', 'w') unless File.exist?('plateau')

  # Efface le contenu de 'plateau' s'il existe déjà
  File.delete('plateau')

  if ARGV.count != 3
    puts 'params needed: x y density'
    exit
  end

  # Parsing
  x = ARGV[0].to_i
  y = ARGV[1].to_i
  density = ARGV[2].to_i

  # Ecrit les informations de la carte dans le fichier 'plateau'
  open('plateau', 'a') { |f| f << "#{y}.xo" }
  open('plateau', 'a') { |f| f << "\n" }
  (0..y - 1).each do |_i|
    (0..x).each do |_j|
      # Ajoute un 'x' ou un '.' au fichier en fonction de la densité et d'un nombre aléatoire
      open('plateau', 'a') { |f| f << (rand(y) * 2 < density ? 'x' : '.') }
    end
    # Ajoute un retour à la ligne à la fin de chaque ligne
    open('plateau', 'a') { |f| f << "\n" }
  end
end

plateau_generator
