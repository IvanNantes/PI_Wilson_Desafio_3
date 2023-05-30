Algoritmo "Estoque Loja V2.0 - Desafio 03"

Var

   numero_prod: vetor [1..100] de inteiro
   code_prod: vetor [1..100] de caractere
   nome_prod: vetor [1..100] de caractere
   quant_prod: vetor [1..100] de real
   numero_cliente: vetor [1..100] de real
   nome_cliente: vetor [1..100] de caractere
   comp_cliente: vetor [1..100] de inteiro
   numero_clicomp: vetor [1..100] de inteiro
   nome_clicomp: vetor [1..100] de caractere
   prod_clicomp: vetor [1..100] de caractere
   qnt_clicomp: vetor [1..100] de inteiro


   j, k, j_var, qunt, n_cli, n_ped, vend, compra: inteiro
   i, x, x_var, quant, y, esc, cod_edit: inteiro
   soma, sub: real
   as, sn: caractere

Inicio

   x_var := 1
   x := 0
   y := 0
   soma := 0
   sub := 0
   cod_edit := 0
   j_var := 1
   k := 0
   compra := 0

   repita

      escreval("________________________________________________________________")
      escreval("Adicionar Produto: 1")
      escreval("Adicionar Cliente: 2")
      escreval("Editar Produto:    3")
      escreval("Venda de Produtos: 4")
      escreval("Ver Estoque:       5")
      escreval("Ver Clientes:      6")
      escreval("Ver Compras:       7")
      escreval("________________________________________________________________")
      escreva("Sua Escolha: ")
      leia(esc)

      se esc = 1 entao

         escreval("Quantos produtos serão adicionados?")
         leia(quant)

         y := y + quant
         x := x + x_var

         para i de x ate y faca
            numero_prod[i] := i
            escreval("________________________________________________________________")
            escreva("Digite o Código do produto ", i,": ")
            leia(code_prod[i])
            escreval(".....")
            escreva("Digite o nome do produto ", i,": ")
            leia(nome_prod[i])
            escreval(".....")
            escreva("Digite a quantidade do produto ", i,": ")
            leia(quant_prod[i])

         fimpara

      senao

         se esc = 5 entao
            se y = 0 entao
               escreval("SEM PRODUTOS ADICIONADOS")
            senao
               escreval("________________________________________________________________")
               escreval("| Número | Código | Nome | Quantidade |")
               escreval("................................................................")
               para i de 1 ate y faca
                  escreva(numero_prod[i])
                  escreva ("  |  ")
                  escreva(code_prod[i])
                  escreva ("  |  ")
                  escreva(nome_prod[i])
                  escreva ("  |  ")
                  escreval(quant_prod[i])
                  escreval("................................................................")

               fimpara
            fimse
         senao

            se esc = 3 entao
               escreval("________________________________________________________________")
               escreval
               se y = 0 entao
                  escreval("SEM PRODUTOS ADICIONADOS")
               senao
                  escreval("Deseja Adicionar ou Subtrair a quantidade de um prod.? ( a / s )")
                  leia(as)
                  se as = "a" entao
                     escreval("________________________________________________________________")
                     escreval("Digite o número do produto que deseja adicionar:")
                     leia(cod_edit)
                     escreval("..........")
                     escreval("O quanto deseja adicionar de ", nome_prod[cod_edit],"?")
                     leia(soma)
                     quant_prod[cod_edit] := quant_prod[cod_edit] + soma
                     soma := 0
                     cod_edit := 0
                     escreval("................................................................")
                  senao
                     se as = "s" entao
                        escreval("________________________________________________________________")
                        escreval("Digite o número do produto que deseja subtrair:")
                        leia(cod_edit)
                        escreval("..........")
                        escreval("O quanto deseja subtrair de ", nome_prod[cod_edit],"?")
                        leia(sub)
                        quant_prod[cod_edit] := quant_prod[cod_edit] - sub
                        sub := 0
                        escreval("................................................................")
                     fimse
                  fimse
               fimse
            senao
               se esc = 2 entao
                  escreval("________________________________________________________________")

                  escreval("Quantos Clientes serão adicionados?")
                  leia(qunt)

                  k := k + qunt
                  j := j + j_var

                  para i de j ate k faca
                     numero_cliente[i] := i
                     escreval("..........")
                     escreva("Digite o nome do Cliente ", i,": ")
                     leia(nome_cliente[i])

                  fimpara
               senao
                  se esc = 6 entao
                     se k = 0 entao
                        escreval("SEM CLIENTES ADICIONADOS")
                     senao
                        escreval("________________________________________________________________")
                        escreval("| Número | Nome do Cliente | Número de Compras |")
                        escreval("................................................................")
                        para i de 1 ate k faca
                           escreva(numero_Cliente[i])
                           escreva ("  |  ")
                           escreva(nome_cliente[i])
                           escreva ("  |  ")
                           escreval(comp_cliente[i])
                           escreval("................................................................")

                        fimpara
                     fimse
                  senao
                     se esc = 4 entao
                        se (y = 0) entao
                           escreval("SEM INFORAÇÕES SUFICIENTES")
                        senao
                           escreval("________________________________________________________________")
                           escreval("Quem fez o pedido? (Escreva o numero do cliente)")
                           leia(n_cli)
                           escreval(".........")
                           escreval("Qual produto será vendido? (escreva o número do produto)")
                           leia(n_ped)
                           escreval(".........")
                           escreval("Quanto será vendido?")
                           leia(vend)

                           quant_prod[n_ped] := quant_prod[n_ped] - vend
                           comp_cliente[n_cli] := comp_cliente[n_cli] + 1
                           compra := compra + 1

                           numero_clicomp[compra] := compra
                           nome_clicomp[compra] := nome_cliente[n_cli]
                           prod_clicomp[compra] := nome_prod[n_ped]
                           qnt_clicomp[compra] := vend

                        fimse
                     senao
                        se esc = 7 entao
                           se compra = 0 entao
                              escreval("SEM COMPRAS REGISTRADAS")
                           senao
                              escreval("________________________________________________________________")
                              escreval(" | Número | Nome do Comprador | Nome do Produto | Quantidade ")
                              escreval("................................................................")
                              para i de 1 ate compra faca
                                 escreva(i)
                                 escreva ("  |  ")
                                 escreva(nome_Clicomp[i])
                                 escreva ("  |  ")
                                 escreva(prod_clicomp[i])
                                 escreva ("  |  ")
                                 escreval(qnt_clicomp[i])
                                 escreval("................................................................")

                              fimpara
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse

   ate (y >= 100)

Fimalgoritmo

