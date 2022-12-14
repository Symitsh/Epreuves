# ***** Combinaisons de 3 chiffres *****
# Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant.

# exemple : 012, 013, 014, 015, 016, 017, 018, 019, 023, 024, ... , 789

def combinaisons
  result = []
  10.times do |i|
    (i + 1..9).each do |j|
      (j + 1..9).each do |k|
        result << "#{i}#{j}#{k}"
      end
    end
  end
  puts result.join(', ')
end

combinaisons
