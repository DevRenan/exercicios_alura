VOGAIS = ['a','e','i','o','u']

def aceita_apenas_consoantes
  puts 'Digite uma consoante'
  letra = gets.strip[0].downcase
  loop do
    if VOGAIS.include? letra
      puts "Vogal: #{letra} não é válida "
      return aceita_apenas_consoantes
    else
      puts "Consoante #{letra} é válida."
      return letra
    end
  end
end

aceita_apenas_consoantes
