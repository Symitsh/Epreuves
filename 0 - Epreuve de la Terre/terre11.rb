# 24 to 12
# Créez un programme qui transforme une heure affichée en format 24h en une heure affichée en format 12h.

# Méthode pour transformer une heure en format 24h en format 12h
def time_24_to_12(time)
  hour = time[0..1].to_i
  minute = time[3..4].to_i
  if hour > 12
    hour -= 12
    puts "#{hour}:#{minute} PM"
  elsif hour == 12
    puts "#{hour}:#{minute} PM"
  elsif hour.zero?
    hour = 12
    puts "#{hour}:#{minute} AM"
  else
    puts "#{hour}:#{minute} AM"
  end
end

if ARGV.length.zero? || ARGV.length > 1
  puts 'erreur.'
  exit
elsif /\d{2}:\d{2}/.match(ARGV[0]).nil?
  puts 'erreur.'
  exit
end

time_24_to_12(ARGV[0])
