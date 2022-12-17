# ***** Echauffement *****
width = ARGV[0].to_i
height = ARGV[1].to_i

def draw_line(width, is_top_or_bottom)
  if width == 1
    puts 'o'
  elsif is_top_or_bottom
    puts 'o' + '-' * (width - 2) + 'o'
  else
    puts '|' + ' ' * (width - 2) + '|'
  end
end

# Gérer les problèmes potentiels d’arguments
if width.zero? || height.zero?
  puts 'error'
  exit
end

# Dessin du rectangle
height.times do |i|
  if i.zero? || i == height - 1
    draw_line(width, true)
  else
    draw_line(width, false)
  end
end
