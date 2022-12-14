# ***** Combinaisons de 2 nombres *****
# Créez un programme qui affiche toutes les différentes combinaisons de deux nombre entre 00 et 99 dans l’ordre croissant.

# exemple : 00 01, 00 02, 00 03, 00 04, ... , 00 99, 01 02, ... , 97 99, 98 99

def combinaisons
  result = []
  100.times do |i|
    (i + 1..99).each do |j|
      result << "#{i.to_s.rjust(2, '0')} #{j.to_s.rjust(2, '0')}"
    end
  end
  puts result.join(', ')
end

combinaisons
