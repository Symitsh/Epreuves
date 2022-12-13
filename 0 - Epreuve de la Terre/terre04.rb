# Pair ou impair
# Créez un programme qui permet de déterminer si l’argument donné est un entier pair ou impair..

def integer?(string)
  string.to_i.to_s == string
end

def even?(integer)
  integer.even?
end

if integer?(ARGV[0])
  puts even?(ARGV[0].to_i) ? 'pair' : 'impair'
else
  puts "Ce n'est pas un entier"
end
