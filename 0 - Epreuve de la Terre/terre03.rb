# L’alphabet à partir de
# Créez un programme qui affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules suivi d’un retour à la ligne.

# Méthode pour afficher l'alphabet à partir d'une lettre donnée
def display_alphabet(letter)
  alphabet = (letter..'z')
  alphabet.each { |i| print i }
  puts ''
end

letter = ARGV[0]
display_alphabet(letter)
