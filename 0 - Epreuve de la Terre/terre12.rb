# ***** 12 to 24 *****
# Créez un programme qui transforme une heure affichée en format 12h en une heure affichée en format 24h.

# Méthode pour transformer une heure en format 12h en format 24h
def time_12_to_24(time)
  hour = time[0..1].to_i
  minute = time[3..4].to_i
  if hour == 12 && time[-2..] == 'AM'
    hour -= 12
    puts "#{hour}:#{minute}"
  elsif hour == 12 && time[-2..] == 'PM'
    puts "#{hour}:#{minute}"
  elsif time[-2..] == 'PM'
    hour += 12
    puts "#{hour}:#{minute}"
  else
    puts "#{hour}:#{minute}"
  end
end

if ARGV.length.zero? || ARGV.length > 1
  puts 'erreur.'
  exit
end

time_12_to_24(ARGV[0])
