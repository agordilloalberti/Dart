import 'dart:developer';
import 'dart:io';

void main() {
  generosMusicales();
}


void generosMusicales(){


  Set<String> set = {};
  String? op;

  do{
    print('Seleccione una opción:\n1. Añadir genero\n2.Eliminar genero\n3.Ver todos\n0.Salir');
    op=stdin.readLineSync();

    switch(op){
      case "1":

        if(set.length<5) {
        print('Introduzca el genero a añadir');
        String? genero = stdin.readLineSync();

        if(genero==null || genero==''){
          print('Tiene que ingresar un valor');
        }else{
            if (set.contains(genero)) {
              print('El genero $genero ya existe');
            } else {
              print('El genero $genero ha sido añadido');
              set.add(genero);
            }
          }
        }else{
          print('No pueden añadirse mas de 5 generos');
        }

        break;
      case "2":
        break;
      case "3":
        break;
      case "0":
        break;
      default:
        break;
    }

  }while(op!=0);

  print(set);
}

// void tareas(){
//   List list = List.filled(length, fill);
// }
//
// void calificaciones(){
//   Map map = new Map();
// }