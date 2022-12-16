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
# Total success: (19/25)

# Bonus : trouvez le moyen d’utiliser du vert et du rouge pour rendre réussites et échecs plus visibles.

class MetaExercice
  def self.green(text)
    "\e[32m#{text}\e[0m"
  end

  def self.red(text)
    "\e[31m#{text}\e[0m"
  end

  def self.check_exercise(exercise_number, command)
    @result = 0
    @a = 0
    output = `#{command}`
    expected_outputs = {
      'air00' => %W[Bonjour\n les\n gars\n],
      'air01' => ["Crevette magique dans \n", " mer des étoiles\n"],
      'air02' => ["Je teste des trucs\n"],
      'air03' => %W[5\n monsieur\n],
      'air04' => ["Helo milady, bien ou quoi ?\n"],
      'air05' => ["3 4 5 6 7\n", "5 6 7 15\n"],
      'air06' => ["Michel\n", "Michel, Thérèse, Benoit\n"],
      'air07' => ["1 2 3 4\n", "10 20 30 33 40 50 60 70 90\n"],
      'air08' => ["10 15 20 25 30 35\n"],
      'air09' => ["Albert, Thérèse, Benoit, Michel\n"],
      'air10' => ["Je danse le mia\n", "Je danse le mia\n"],
      'air11' => %W[O\n OOO\n OOOOO\n OOOOOOO\n OOOOOOOOO\n],
      'air12' => ["1 2 3 4 5 6\n"]
    }
    expected_outputs[exercise_number].each do |expected_output|
      if output.include?(expected_output)
        puts "#{exercise_number} (#{@a += 1}/#{expected_outputs[exercise_number].length}) : #{@success}"
        @result += 1
      else
        puts "#{exercise_number} (#{@a += 1}/#{expected_outputs[exercise_number].length}) : #{@failure}"
      end
    end
    @result
  end

  def self.run_all_exercises
    total_success = 0

    exercises = [
      ['air00', 'ruby air00.rb "Bonjour les gars"'],
      ['air01', 'ruby air01.rb "Crevette magique dans la mer des étoiles" "la"'],
      ['air02', 'ruby air02.rb "Je" "teste" "des" "trucs" " "'],
      ['air03', 'ruby air03.rb 1 2 3 4 5 4 3 2 1 && ruby air03.rb bonjour monsieur bonjour'],
      ['air04', 'ruby air04.rb "Hello milady,  bien ou quoi ??"'],
      ['air05', 'ruby air05.rb 1 2 3 4 5 "+2" && ruby air05.rb 10 11 12 20 "-5"'],
      ['air06', 'ruby air06.rb "Michel" "Albert" "Thérèse" "Benoit" "t" && ruby air06.rb "Michel" "Albert" "Thérèse" "Benoit" "a"'],
      ['air07', 'ruby air07.rb 1 3 4 2 && ruby air07.rb 10 20 30 40 50 60 70 90 33'],
      ['air08', 'ruby air08.rb 10 20 30 fusion 15 25 35'],
      ['air09', 'ruby air09.rb "Michel" "Albert" "Thérèse" "Benoit"'],
      ['air10', 'cat a.txt && ruby air10.rb "a.txt"'],
      ['air11', 'ruby air11.rb O 5'],
      ['air12', 'ruby air12.rb 6 5 4 3 2 1']
    ]
    @success = green('success')
    @failure = red('faillure')
    exercises.each do |exercise|
      exercise_result = check_exercise(exercise[0], exercise[1])
      total_success += exercise_result
    end

    puts "Total success: (#{total_success}/25)"
  end
end

MetaExercice.run_all_exercises
