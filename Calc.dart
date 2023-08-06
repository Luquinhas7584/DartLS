/*
Tarefa: Criar uma calculadora simples em Dart.

Descrição: Você deve criar uma calculadora que permita ao usuário realizar operações de adição,
subtração, multiplicação e divisão entre dois números. A calculadora deve exibir um menu para o usuário
escolher a operação desejada, solicitar os dois números de entrada e, em seguida, mostrar o resultado da
operação escolhida.

Regras:

O programa deve verificar se os números de entrada são válidos (números inteiros ou de ponto flutuante).
Caso o usuário escolha a operação de divisão, certifique-se de que o segundo número não seja zero.
O programa deve continuar executando até que o usuário decida sair explicitamente.
*/
import 'dart:io';

double a = 10;
double b = 5;

int x = 1;
int p = 9999;
void main(){

  
  
  

 do{
    print("---------------Calculator LS--------------------");
    print("Me digas a operação que deseje utilizar nesta calculadora virtual");
    print("Digite '0' se você é inteligente o suficiente para não depender de tais metodos preguiçosos");
    print("Digite '1' para a Soma");
    print("Digite '2' para a Subtração");
    print("Digite '3' para a Divisão");
    print("Digite '4' para a Multiplicação");
    
    String? input = stdin.readLineSync();
      if (input != null && input.trim().isNotEmpty) {
        if (double.tryParse(input) != null || int.tryParse(input) != null) {
        p = int.parse(input);
        }else {
        print("Errrou. Leia as intruçoes e tente novamente.");
        }
    }
     


    Soma(a,b){
      print(a+b);
    }

    Sub(a,b){
      print(a-b);
    } 

    Div(a,b){
      if(b != 0){
        print(a/b);  
      }else
        print('Divindo por 0?');
    } 

    Mult(a,b){
       print(a*b);
    } 

    
   switch(p){
     case 0:
      x = 0;
     print("Cabo");
      break;
       
      case 1:
      Soma(a,b);
      break;
       
      case 2:
      Sub(a,b);
      break;
       
      case 3:
      Div(a,b);
      break;
       
      case 4:
      Mult(a,b);
      break;
   }
  }while(x != 0);
 
}