# ***** Trouver une forme *****
class FindShape
  # Méthode pour lire et parser les données d'un fichier
  def parse_data(file)
    i = 0
    res = []
    File.foreach(file) do |element|
      res[i] = []
      res[i] += element.chomp.split('')
      i += 1
    end
    res
  end

  # Méthode pour trouver la position de la forme dans le tableau
  def gives_position(board, to_find)
    (0..(board.size - 1)).each do |line|
      (0..(board[line].size - 1)).each do |column|
        # Si les éléments de la forme à chercher correspondent à ceux du tableau, on retourne la position de la forme
        if to_find[0][0] == board[line][column] &&
           to_find[0][1] == board[line][column + 1] &&
           to_find[1][1] == board[line + 1][column + 1]
          return "#{column}, #{line}"
        end
      end
    end
    # Si la forme n'a pas été trouvée, on affiche un message d'erreur et on quitte le programme
    puts 'Introuvable'
    exit
  end
end

# Gestion d'erreur
unless ARGV.size == 2
  puts "*** error ***\n _#{__FILE__}_\nPass two data files.\n
  The first is the shape to search for."
  exit
end

def main
  obj = FindShape.new
  # On lit et parse les données des fichiers passés en argument
  board = obj.parse_data(ARGV[0])
  to_find = obj.parse_data(ARGV[1])
  # On utilise la méthode gives_position pour trouver la position de la forme dans le tableau
  obj.gives_position(board, to_find)
end

if main
  puts 'Trouvé !'
  puts "Coordonnées : #{main}"
end
