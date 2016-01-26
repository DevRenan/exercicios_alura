require_relative 'ui'

def sorteia_palavra_secreta
  "programador"
end


def pede_um_chute_valido(chutes)
  loop do
    chute = pede_um_chute
    if chutes.include? chute
      avisa_chute_efetuado(chute)
    else
      return chute
    end
  end
end

def joga
  erros = 0
  palavra_secreta = sorteia_palavra_secreta
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    chute = pede_um_chute_valido(chutes)
    chutou_uma_palavra = chute.size > 1
    if chutou_uma_palavra
      if chute == palavra_secreta
        pontos_ate_agora+=100
        avisa_acerto_palavra
        break
      else
        avisa_erro_palavra
        pontos_ate_agora-=30
        erros+=1
      end
    else
      total_encontrado = palavra_secreta.count chute
      if total_encontrado > 0
        avisa_letra_encontrada(total_encontrado)
      else
        avisa_letra_nao_encontrada
        erros+=1
      end
    end
    chutes << chute
    mascara = palavra_mascarada(palavra_secreta,chutes)
    feedback_jogo(chutes, erros, mascara)
  end
  avisa_pontuacao(pontos_ate_agora)
end

def palavra_mascarada(palavra_secreta, chutes)
  mascara = ""
  for letra in palavra_secreta.chars
    if chutes.include? letra
      mascara << letra
    else
      mascara << '_'
    end
  end
  mascara
end

def inicia_jogo
  da_boas_vindas
  loop do
    joga
    break if nao_quer_jogar?
  end
end
