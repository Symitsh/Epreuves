# Programme permettant de généré un labyrinth avec en paramètre :
# la largeur, hauteur, un char(chemin), les portes(entrée, sortie)
# Exemple: ruby labyrinth_generator.rb 10 10 "* o12"

def labyrinth_generator
  # Vérifie si le fichier example.map existe déjà sinon le crée
  File.new('example.map', 'w') unless File.exist?('example.map')

  # Efface le contenu de 'example.map' s'il existe déjà
  File.delete('example.map')

  if ARGV.length < 3 || ARGV[2].length < 5
    puts 'params needed: height width and five characters in a string'
    exit
  end

  # Parsing
  height = ARGV[0].to_i
  width = ARGV[1].to_i
  chars = ARGV[2]
  entry = rand(width - 4) + 2
  entry2 = rand(width - 4) + 2

  # Ecrit les informations de la carte dans le fichier 'example.map'
  open('example.map', 'a') { |f| f << "#{height}x#{width}#{ARGV[2]}" }
  open('example.map', 'a') { |f| f << "\n" }

  height.times do |y|
    width.times do |x|
      # Vérifie si la position actuelle est l'entrée ou la sortie du labyrinthe et écrit le caractère correspondant
      if y.zero? && x == entry
        open('example.map', 'a') { |f| f << chars[4].chr }
      elsif y == height - 1 && x == entry2
        open('example.map', 'a') { |f| f << chars[3].chr }
      # Génère aléatoirement un mur ou un passage
      elsif y.between?(1, height - 2) && x.between?(1, width - 2) && rand(100) > 20
        open('example.map', 'a') { |f| f << chars[1].chr }
      else
        # Ecrit le caractère de passage par défaut
        open('example.map', 'a') { |f| f << chars[0].chr }
      end
    end
    # Ecrit une nouvelle ligne dans le fichier example.map à la fin de chaque itération de la boucle
    open('example.map', 'a') { |f| f << "\n" }
  end
end

labyrinth_generator
