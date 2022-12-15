# ***** Meta exercice *****
# Créez un programme qui vérifie si les exercices de votre épreuve de l’air sont présents dans le répertoire,
# et qu’ils fonctionnent (sauf celui là). Créez au moins un test pour chaque exercice.

# Exemple : ruby exo.rb =>
# air00 (1/3) : success
# air00 (2/3) : success
# air00 (3/3) : success
# air01 (1/2) : success
# air01 (2/2) : failure
# air02 (1/1) : success
# ...
# Total success: (19/24)

# Bonus : trouvez le moyen d’utiliser du vert et du rouge pour rendre réussites et échecs plus visibles.
@a = 0
@b = 0

def green(text)
  "\e[32m#{text}\e[0m"
end

def red(text)
  "\e[31m#{text}\e[0m"
end

def verify_exo(name, input, output)
  # Vérifie que le programme retourne bien le résultat attendu
  if input == output
    @a += 1
    puts "#{name} (#{@a}/3) : #{green('success')}"
  else
    @b += 1
    puts "#{name} (#{@b}/3) : #{red('failure')}"
  end
end

def verify_air00
  # lance le programme air00.rb avec les arguments de input et vérifie que le résultat est égal à output
  air00 = `ruby air00.rb "Bonjour les gars"`

  # Sortie attendue
  output = %w[Bonjour\n les\n gars\n]
  # Vérifie que le programme retourne bien le résultat attendu
  verify_exo('air00', air00, output)
  exit
end

verify_air00
