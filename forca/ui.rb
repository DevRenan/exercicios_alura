def da_boas_vindas
  puts "Bem vindo ao jogo da forca!"
  puts "Digite seu nome:"
  nome = gets.strip
  puts "vamos começar o jogo para você #{nome}"
  nome
end

def nao_quer_jogar?
  puts 'Deseja jogar novamente? (S/N)'
  resposta = gets.strip.upcase
  nao_quer_jogar = resposta == 'N'
  nao_quer_jogar
end

def pede_um_chute
  puts 'Chute uma letra ou uma palavra'
  chute = gets.strip
end

def avisa_chute_efetuado(chute)
  puts "Você já chutou |#{chute}| antes"
end
def avisa_acerto_palavra
  puts 'Parabéns! Você acertou a palavra'
end

def avisa_erro_palavra
  puts "Que pena... Errou!"
end

def feedback_jogo(chutes, erros, mascara)
  puts "Chutes até agora: #{chutes}"
  puts "Erros até agora: #{erros}"
  puts mascara
end

def avisa_letra_encontrada(total_encontrado)
  puts "Letra encontrada #{total_encontrado} vezes!"
end

def avisa_letra_nao_encontrada
  puts "Letra não encontrada"
end

def avisa_pontuacao(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos."
end