# ***** Sudoku *****
# On commence par lire le fichier texte et en extraire les données du Sudoku
sudoku_data = File.read(ARGV[0]).strip.split("\n").map { |row| row.split('') }

# On définit une méthode qui vérifie si une valeur est valide pour une cellule donnée du Sudoku
def valid_value?(sudoku_data, row, col, value)
  # Vérification de la ligne
  return false if sudoku_data[row].include?(value)

  # Vérification de la colonne
  return false if sudoku_data.transpose[col].include?(value)

  # Vérification du bloc
  block_row = (row / 3) * 3
  block_col = (col / 3) * 3
  (block_row...block_row + 3).each do |r|
    (block_col...block_col + 3).each do |c|
      return false if sudoku_data[r][c] == value
    end
  end

  true
end

# On définit une méthode récursive qui essaie de remplir les cellules du Sudoku de manière récursive
def solve_sudoku(sudoku_data)
  9.times do |row|
    9.times do |col|
      # Si la cellule est vide, on essaie de la remplir avec une valeur valide
      next unless sudoku_data[row][col] == '.'

      # On essaie chaque valeur possible
      (1..9).each do |value|
        # Si la valeur est valide pour la cellule, on la met dans la cellule et on continue de remplir récursivement le Sudoku
        next unless valid_value?(sudoku_data, row, col, value.to_s)

        sudoku_data[row][col] = value.to_s
        result = solve_sudoku(sudoku_data)
        return result if result
      end

      # Si aucune valeur n'est valide pour la cellule, cela signifie que la solution précédente était incorrecte,
      # donc on annule le choix et on remet la cellule vide
      sudoku_data[row][col] = '.'
      return false
    end
  end

  # Si toutes les cellules sont remplies, on retourne la solution trouvée
  sudoku_data
end

# On appelle la méthode de résolution du Sudoku
solution = solve_sudoku(sudoku_data)

# Si une solution a été trouvée, on l'affiche
if solution
  solution.each do |row|
    puts row.join('')
  end
else
  puts 'Aucune solution trouvée'
end
