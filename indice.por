 programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  const inteiro LARGURA = 800
  const inteiro ALTURA = 500

    funcao inicio() {
      // Funções da biblioteca de gráficos parar montar a tela de jogo
        graficos.iniciar_modo_grafico(verdadeiro)
        graficos.definir_dimensoes_janela(LARGURA, ALTURA)
        graficos.definir_titulo_janela("Batalha Pokémon RPG")
        /**
         * Tipos e variáveis:
         * cadeia - tipo de dado parar escrever textos, exemplo: "Batalha Pokémon"
         * caractere - tipo de dado usado apenas para screver apenas um caracter, exemplo: "M"
         * logico - tipo de dado para informar se o valor é verdadeiro ou falso, exemplo: cadastrado = falso
         * inteiro - tipo de dado para informar números inteiros sem casas deci,ais, exemplo: idade = 17
         * real - tipo de dado para informar números com casas decimais, exemplo: preço = 35.00
         * vazio - tipo de dado usado para acessar funções sem retorno de valor, exemplo: função escreva
         */
        // Informções do meu pokémon
        cadeia meu_pokemon = "Pikachu"
        inteiro hp_meu_pokemon = 100
        inteiro max_hp_meu_pokemon = 100

        //Informções do pokémon inimigo
        cadeia pokemon_inimigo = "Gengan"
        inteiro hp_pokemon_inimigo = 120
        inteiro max_hp_pokemon_inimigo = 120
        desenhar_cena(
          meu_pokemon,
          hp_meu_pokemon,
          max_hp_meu_pokemon,
          pokemon_inimigo,
          hp_pokemon_inimigo,
          max_hp_pokemon_inimigo,
          "Um " + pokemon_inimigo + " selvagem apareceu! "

        )
        //ENTRADA: o jogo aguardar o jogador confirmar antes de executar:
        escreva("Pressione ENTER parar atacar... ")
        cadeia continuar
        leia(continuar)
        /**
         * Operadores aritméticos:
         * soma(+) = operador utilizado para somar dois ou mais números
         * subtração(-) = operador utilizado para subtrair dois ou mais números
         * multilicação(*) = operador utilizado para multiplicar dois ou mais números
         * divisão(/) = operador utilizado para dividir dois ou mais números
         * módulo(%) = operador utilizado para pegar o valor do resto da divisão
         * 
         * Precedência dos operadores:
         * Os parênteses () vem primeiro que a divisão *, depois da divisão vem a multiplicação,
         * depois vem a soma e por fim a subtração, exemplo:
         * (2 + 2) / 2 * 2 + 2 - 2
         */

        inteiro dano = util.sorteia(22, 90)
        hp_pokemon_inimigo = hp_pokemon_inimigo - dano
        /**
         * Operadores relacionais:
         * > sinal de maior que
         * < sinal de menor que
         * >= sinal de maior ou igual
         * <= sinal de menor ou igual
         * == sinal de igual
         * != sinal de diferente 
         * Todods os operadores relacionais retornar verdadeiro ou falso
         */
        se(hp_pokemon_inimigo < 0) {
          hp_pokemon_inimigo = 0
        }
        //Saída com o resultado do dano causado ao pokémon inimigo
        escreva(">> ", meu_pokemon, " causou ", dano, " de dano ", "\n")
        escreva(">> ", pokemon_inimigo, ": ", hp_pokemon_inimigo, "/", max_hp_pokemon_inimigo, "\n")

        escreva("Janela gráfica aberta! Tela criada com a biblioteca de gráficos! ", "\n")
        desenhar_cena(
          meu_pokemon,
          hp_meu_pokemon,
          max_hp_meu_pokemon,
          pokemon_inimigo,
          hp_pokemon_inimigo,
          max_hp_pokemon_inimigo,
          meu_pokemon + " causou " + dano + " de dano! "

        )
        //Esta função aguarda 5 segundos para encerrar o programa
        util.aguarde(15000)
    }
    funcao vazio desenhar_cena(
      cadeia p_nome_pokemon,
      inteiro p_hp_pokemon,
      inteiro p_max_hp_pokemon,
      cadeia i_nome_pokemon,
      inteiro i_hp_pokemon,
      inteiro i_max_hp_pokemon,
      cadeia mensagem
      )
       {//Definição da cor do céu
        graficos.definir_cor(graficos.criar_cor(150, 216, 250))
        graficos.desenhar_retangulo(0, 0, LARGURA, 260, falso, verdadeiro)
        //Definição da grama do jogo
        graficos.definir_cor(graficos.criar_cor(120, 190, 100))
        graficos.desenhar_retangulo(0, 260, LARGURA, 240, falso, verdadeiro)
        //Plataforma oval do pokémon inimigo
        graficos.definir_cor(graficos.criar_cor(90, 130, 80))
        graficos.desenhar_elipse(475, 165, 250, 65, verdadeiro)
        //Plataforma oval do nosso pokémon
        graficos.definir_cor(graficos.criar_cor(80, 120, 70))
        graficos.desenhar_elipse(110, 365, 200, 75, verdadeiro)
        //Desenho do pokémon inimigo
        graficos.definir_cor(graficos.criar_cor(110, 60, 150))
        graficos.desenhar_retangulo(540, 90, 110, 100, falso, verdadeiro)
        //Desenho do nosso pokémon
        graficos.definir_cor(graficos.criar_cor(255, 215, 0))
        graficos.desenhar_retangulo(180, 280, 110, 100, falso, verdadeiro)
        //Textos dos pokémons na tela do jogo
        graficos.definir_cor(graficos.criar_cor(250, 250, 235))
        graficos.desenhar_retangulo(50, 40, 300, 75, falso, verdadeiro)
        graficos.definir_cor(graficos.COR_PRETO)
        graficos.desenhar_retangulo(450, 310, 300, 75, falso, falso)
        graficos.desenhar_texto(60, 55, i_nome_pokemon + " HP: " + i_hp_pokemon + "/" + i_max_hp_pokemon)

        graficos.definir_cor(graficos.criar_cor(250, 250, 235))
        graficos.desenhar_retangulo(450, 310, 300, 75, falso, verdadeiro)
        graficos.definir_cor(graficos.COR_PRETO)
        graficos.desenhar_retangulo(450, 310, 300, 75, falso, falso)
        graficos.desenhar_texto(480, 372, p_nome_pokemon + " HP: " + p_hp_pokemon + "/" + p_max_hp_pokemon)
        //Campo onde ficará as mensagens na tela do jogo
        graficos.definir_cor(graficos.criar_cor(250, 250, 235))
        graficos.desenhar_retangulo(20, 420, 760, 65, falso, verdadeiro)
        graficos.definir_cor(graficos.COR_PRETO)
        graficos.desenhar_retangulo(20, 420, 760, 65, falso, falso)
        graficos.desenhar_texto(40, 445, mensagem)
        //Esta função é responsável por abrir a tela do jogo
        graficos.renderizar()

    }
 }