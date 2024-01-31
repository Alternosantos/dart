import 'dart:io';

void clearConsole() {
  // Use ANSI escape codes to clear the console
  stdout.write('\x1B[2J\x1B[0;0H');
}

void main()
{
    double? a;
    double? b;
    int? escolha;

    do {
    clearConsole();
    print("***********CALCULADORA***********");
    print("\nEscolha uma das opções abaixo para realizar a operação desejada: \n1-Somar \n2-Subtrair \n3-Multiplicar \n4-Dividir \n0-Sair");
    escolha = int.parse(stdin.readLineSync()!);
    switch (escolha) {
        case 1:
            print("Introduza o primeiro num:\n>> ");
            a = double.parse(stdin.readLineSync()!);
            print("Introduza o segundo num:\n>> ");
            b = double.parse(stdin.readLineSync()!);
            print("\n$a + $b = ${a + b}");
            break;
        case 4:
            print("Introduza o primeiro num:\n>> ");
            a = double.parse(stdin.readLineSync()!);
            print("Introduza o segundo num:\n>> ");
            b = double.parse(stdin.readLineSync()!);
            if (b == 0) {
                print("Nao pode dividir por zero!");
            } else {
                print("\n$a / $b = ${a / b}");
            }
            break;
        case 2:
            print("Introduza o primeiro num:\n>> ");
            a = double.parse(stdin.readLineSync()!);
            print("Introduza o segundo num:\n>> ");
            b = double.parse(stdin.readLineSync()!);        
            print("\n$a - $b = ${a - b}");
            break;
        case  3:
            print("Introduza o primeiro num:\n>> ");
            a = double.parse(stdin.readLineSync()!);
            print("Introduza o segundo num:\n>> ");
            b = double.parse(stdin.readLineSync()!);
            print("\n$a * $b = ${a * b}");
            break;
        case 0:
            print("A sair...");
            clearConsole();
            break;    
        default:
            print("Opcao invalida!");
            break;
    }
    
    
    stdin.readLineSync();
      
    } while (escolha != 0);
    
}