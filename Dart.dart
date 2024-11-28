import 'dart:io';

void main() {
  generosMusicales();
}


void generosMusicales(){

  Set<String> generos = {};
  String? op;

  do{
    print('Seleccione una opción:\n1. Añadir genero\n2.Eliminar genero\n3.Ver todos\n0.Salir');
    op=stdin.readLineSync();

    switch(op){
      case "1":

        if(generos.length<5) {
        print('Introduzca el genero a añadir');
        String? genero = stdin.readLineSync();

        if(genero==null || genero==''){
          print('Tiene que ingresar un valor');
        }else{
            if (generos.contains(genero)) {
              print('El genero $genero ya existe');
            } else {
              print('El genero $genero ha sido añadido');
              generos.add(genero);
            }
          }
        }else{
          print('No pueden añadirse mas de 5 generos');
        }

        break;
      case "2":
        //TODO
        break;
      case "3":
        break;
      case "0":
        break;
      default:
        break;
    }

  }while(op!=0);

  print(generos);
}

void tareas(){
  List listaTareas = List.empty(growable: true);

  String? op;

  do{
    print('Seleccione una opción:\n1. Añadir tarea\n2.Finalizar tarea actual\n3.Ver siguiente tarea\n4.Ver todas las tareas\n0.Salir');
    op=stdin.readLineSync();

    switch(op) {
      case "1":
        String? tarea = stdin.readLineSync();
        if(tarea==null || tarea=='') {
          print('Debe de ingresar un valor');
        }else{
          listaTareas.add(tarea);
          print('Tarea añadida');
        }
        break;
      case "2":
        listaTareas.remove(listaTareas.first);
        print('La tarea actual ha sido eliminado');
        break;
      case "3":
        print(listaTareas.first);
        break;
      case "4":
        print(listaTareas);
        break;
      case "0":
        print('Adios');
        break;
      default:
        print('Opción incorrecta');
        break;

    }
  }while(op!="0");
}

void calificaciones(){
  Map map = new Map();
}