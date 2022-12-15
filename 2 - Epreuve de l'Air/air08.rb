# ***** Mélanger deux tableaux triés *****
# Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées, les deux listes seront séparées par un “fusion”.
# (Ne pas utiliser la méthode .sort ou .concat)
# Utilisez une fonction prototypée comme ceci :
# sorted_fusion(array1, array2) {
#   votre algorithme
#	  return (new_array)
# }

# Le résultat doit être trié dans l’ordre croissant et ne doit pas contenir le mot fusion ni de doublons.
# Exemple : ruby exo.rb 10 20 30 fusion 15 25 35 => 10 15 20 25 30 35
# Exemple : ruby exo.rb 10 20 30 40 fusion 33 34 35 36 => 10 20 30 33 34 35 36 40

def sorted_fusion(array1, array2)
  i = 0
  j = 0
  new_array = []
  while i < array1.length && j < array2.length
    if array1[i] < array2[j]
      new_array << array1[i]
      i += 1
    else
      new_array << array2[j]
      j += 1
    end
  end
  new_array << array1[i..] if i < array1.length
  new_array << array2[j..] if j < array2.length
  new_array.flatten
end

# Afficher error et quitter le programme en cas de problèmes d’arguments.
if ARGV.size <= 1 || !ARGV.include?('fusion')
  (puts 'error'
   exit)
end

array1 = ARGV[0..ARGV.index('fusion') - 1]
array2 = ARGV[ARGV.index('fusion') + 1..]

puts sorted_fusion(array1, array2).join(' ')
