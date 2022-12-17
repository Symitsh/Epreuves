# ***** Evaluer une expression *****
class ArithmeticExpression
  def evaluate(expression)
    # Convertir l'expression en une liste de tokens
    tokens = tokenize(expression)

    # Évaluer l'expression
    result = parse_expression(tokens)

    # Vérifier qu'il n'y a pas de tokens inattendus dans l'expression
    raise "Invalid expression: #{expression}" if tokens.any?

    result
  end

  def parse_expression(tokens)
    result = parse_term(tokens)
    while tokens.first == '+' || tokens.first == '-'
      operator = tokens.shift
      right = parse_term(tokens)
      if operator == '+'
        result += right
      else
        result -= right
      end
    end
    result
  end

  def parse_term(tokens)
    result = parse_factor(tokens)
    while tokens.first == '*' || tokens.first == '/'
      operator = tokens.shift
      right = parse_factor(tokens)
      if operator == '*'
        result *= right
      else
        result /= right
      end
    end
    result
  end

  def parse_factor(tokens)
    if tokens.first == '('
      tokens.shift
      result = parse_expression(tokens)
      raise "Expected ')'" if tokens.shift != ')'

      result
    elsif tokens.first =~ /\A[+-]?\d+\z/
      tokens.shift.to_i
    else
      raise "Unexpected token: #{tokens.first}"
    end
  end

  def tokenize(expression)
    # Utiliser une expression régulière pour séparer les tokens en utilisant des espaces ou des opérateurs comme délimiteurs
    expression.scan(%r{\d+|[+\-*/()]})
  end
end

# Vérifier qu'un argument a été passé au script
unless ARGV.length == 1
  puts 'Error: wrong number of arguments'
  puts "Usage: ruby #{__FILE__} \"expression\""
  exit
end

# Récupérer l'expression passée en argument
expression = ARGV[0]

# Évaluer l'expression
arithmetic_expression = ArithmeticExpression.new
# tokens = arithmetic_expression.tokenize(expression)
# puts "Tokens: #{tokens}"
result = arithmetic_expression.evaluate(expression)

# Afficher le résultat
puts result
