# Inverser une chaîne
# Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument sans utiliser la méthode reverse.

if ARGV.empty?
  puts "Requires minimum one argument. \nFor example: #{__FILE__} Hello world!"
  exit
end

str1 = ARGV.to_s.tr('()[],"“', '')
newstr = ''

str1.each_char { |i| newstr = i + newstr }
puts newstr
