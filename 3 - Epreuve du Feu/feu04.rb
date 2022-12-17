# ***** Trouver le plus grand carré *****
class MaximalSquare
  # Lit le contenu du fichier plateau et récupère le nombre de colonnes du plateau
  def parse_input_file(plateau, column_number)
    number_of_line = ''
    file_content = File.read(plateau)

    file_content.each_char do |character|
      file_content.slice!(0)
      break if character == "\n"

      number_of_line += character
    end

    number_of_line = number_of_line.to_i
    column_number[0] = 0
    index = 0

    file_content.each_char do |current_character|
      column_number[0] = index if current_character == "\n" && column_number[0].zero?
      index += 1
    end
  end

  # Parcourt le plateau et trouve les coordonnées et la taille du plus grand carré possible
  def find_largest_square(plateau, column_number)
    maximum_position = { 'x' => 0, 'y' => 0, 'size' => 0 }
    column_heights = Array.new(column_number, 0)
    line = 0
    while line * (column_number + 1) < plateau.length
      column = 0
      current_column = 0
      while column < column_number
        temporary_size = 0
        if plateau[column + line * (column_number + 1)] != 'x'
          temporary_size = (current_column < column_heights[column] ? current_column : column_heights[column]) + 1
        end
        current_column = temporary_size
        column_heights[column] = temporary_size
        if temporary_size > maximum_position['size']
          temporary_size = check_square_validity(plateau, column, line, temporary_size,
                                                 column_number)
        end
        if temporary_size > maximum_position['size']
          maximum_position['x'] = column
          maximum_position['y'] = line
          maximum_position['size'] = temporary_size
        end
        column += 1
      end
      line += 1
    end
    maximum_position
  end

  #  Vérifie si un carré de taille donnée à partir de certaines coordonnées est valide en vérifiant que tous les caractères du carré sont différents de 'x'.
  def check_square_validity(plateau, column, row, temporary_size, column_number)
    iteration = 1
    while iteration < temporary_size
      if (column - iteration).negative? || (row - iteration).negative? ||
         check_line_validity(plateau, column - iteration, row - iteration, iteration, column_number) == false
        return iteration
      end

      iteration += 1
    end
    iteration
  end

  # Vérifie si une ligne du carré est valide en vérifiant que tous les caractères de la ligne sont différents de 'x'.
  def check_line_validity(plateau, column, row, iteration, column_number)
    index = 0
    while index < iteration
      if plateau[column + index + row * (column_number + 1)] == 'x' || plateau[column + (row + index) * (column_number + 1)] == 'x'
        return false
      end

      index += 1
    end
    true
  end

  # Dessine un carré de taille donnée à partir de certaines coordonnées en remplaçant tous les caractères du carré par 'o'.
  def	draw_square_in_map(plateau, maximum_position, column_number)
    iteration = 0
    while iteration < maximum_position['size']
      i = 0
      while i < iteration + 1
        plateau[(maximum_position['x'] - iteration) + i + (column_number + 1) * (maximum_position['y'] - iteration)] =
          'o'
        plateau[(maximum_position['x'] - iteration) + (column_number + 1) * ((maximum_position['y'] - iteration) + i)] =
          'o'
        i += 1
      end
      iteration += 1
    end
  end
end

# Gestion d'erreur
unless ARGV.size == 1
  puts "*** error ***\n _#{__FILE__}_
  Only one data file."
  exit
end

# Parsing
def main
  obj = MaximalSquare.new
  column_number = []
  plateau = obj.parse_input_file(ARGV[0], column_number)
  maximum_position = obj.find_largest_square(plateau, column_number[0])
  obj.draw_square_in_map(plateau, maximum_position, column_number[0])
  plateau
end

# Affichage
puts main
