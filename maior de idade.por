programa {

  
  
  
 inclua biblioteca Calendario --> Ca
    cadeia nome
    
  
  funcao inteiro bissexto(inteiro ano){
    se(ano % 4 == 0 e ano % 100 != 0 ou ano % 400 == 0)
      retorne 1
    senao
      retorne 0
  }

  
  funcao inteiro validarData(inteiro d, inteiro m, inteiro a){
    se(d < 1 ou d > 31 ou m < 1 ou m > 12)
      retorne 0
    se(d == 31 e (m == 4 ou m == 6 ou m == 9 ou m == 11))
      retorne 0
    se(m == 2 e d > 29)
      retorne 0
    se(m == 2 e d == 29 e bissexto(a) == 0)
      retorne 0
    retorne 1
  }

 
  funcao inteiro diasNoMes(inteiro m, inteiro a){
    se(m == 1 ou m == 3 ou m == 5 ou m == 7 ou m == 8 ou m == 10 ou m == 12)
      retorne 31
    senao{
     se(m == 4 ou m == 6 ou m == 9 ou m == 11)
        retorne 30
      senao{
       se(bissexto(a) == 1)
        retorne 29
      senao
          retorne 28
      
      }
     
    }
  }
  

  
  funcao calcularIdade(inteiro dn, inteiro mn, inteiro an){
    inteiro da, ma, aa, qtdDia = 0, qtdMes = 0, qtdAno = 0

    da = Ca.dia_mes_atual()
    ma = Ca.mes_atual()
    aa = Ca.ano_atual()

    enquanto(mn < ma - 1 ou an < aa){
      mn++
      qtdMes++
      se(qtdMes == 12){
        qtdMes = 0
        qtdAno++
      }

      se(mn > 12){
        an++
        mn = 1
      }
    }
    
    se(dn == da){
      qtdMes++
      qtdDia = 0
    }
    senao se(dn < da){
      qtdMes++
      qtdDia = da - dn
    }
    senao{
      qtdDia = diasNoMes(ma - 1, aa) + da - dn
    }

    escreva("\n", qtdAno , " anos, ", qtdMes , " meses e ", qtdDia , " dias.\n")

    se(qtdAno>=18){
      

      escreva("\n", nome ," Tem sua Entrada Permitida!!!\n")

    }senao
       

      escreva("\n" , nome ," é Menor de Idade.Entrada Nao Permitida!!!\n")

      
   
  }
  
  funcao inicio(){
    inteiro d, m, a
   
    escreva("Digite sua data de nascimento no formato dd mm aaaa: ")
    leia(d, m, a)
    escreva("Digite o seu nome: ")
    leia(nome)

    se(validarData(d, m, a) == 1){
      calcularIdade(d, m, a)
    }
    senao
      escreva("Dada inválida!\n")
  }
}
 
    
  

