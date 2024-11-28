import 'dart:io';

void main() {
  print('Seleccione una opción:\n1.Administrador de generos musicales\n2.Administrador de tareas\n3.Administrador de calificaciones\n0.Salir');
  String? op=stdin.readLineSync();
  switch(op) {
    case "1":
      generosMusicales();
      break;
    case "2":
      tareas();
      break;
    case"3":
      calificaciones();
      break;
    case "0":
      print('Fin de programa');
      break;
    default:
      print('Opcion invalida');
      break;
  }while(op!="0");
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
        String? genero = stdin.readLineSync();
        if(genero==null || genero=='') {
          print('Tiene que ingresar un valor');
        }else{
          if(generos.isNotEmpty){
            if(generos.contains(genero)) {
              print('El genero $genero ha sido borrado');
              generos.remove(genero);
            }else{
              print('El genero $genero no esta en la lista');
            }
          }else{
            print('No hay generos añadidos');
          }
        }
        break;
      case "3":
        print('Sus generos favoritos son: $generos');
        break;
      case "0":
        print('Adios');
        break;
      default:
        print('Opcion incorrecta');
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
        print('Intraduzca la tarea a añadir');
        String? tarea = stdin.readLineSync();
        if(tarea==null || tarea=='') {
          print('Debe de ingresar un valor');
        }else{
          listaTareas.add(tarea);
          print('Tarea añadida');
        }
        break;
      case "2":
        if(listaTareas.isEmpty){
          print('No hay tareas añadidas');
        }else {
          print(
              'La tarea actual ha sido marcada como finalizada y eliminada de la lista');
          listaTareas.remove(listaTareas.first);
        }
        break;
      case "3":
        if(listaTareas.isEmpty){
          print('No hay tareas añadidas');
        }else {
          print('La tarea actual es: \"${listaTareas.first}\"');
        }
        break;
      case "4":
        if(listaTareas.isEmpty){
          print('No hay tareas añadidas');
        }else {
          print('Estas son todas las tareas añadidas actualmente');
          print(listaTareas);
        }
        break;
      case "0":
        print('Adios');
        break;
      default:
        print('Opción invalida');
        break;

    }
  }while(op!="0");
}

void calificaciones(){
  Map<String,String> calificaciones = {};
  String? op;

  do{
    print('Seleccione una opción:\n1. Añadir estudiante\n2.Eliminar estudiante\n3.Ver estudiante\n4.Ver todos los estudiantes\n0.Salir');
    op=stdin.readLineSync();
    switch(op){
      case "1":
        print('Escriba el nombre del estudiante');
        String? n = stdin.readLineSync();
        if(n!=null && n!='') {
          print('Escriba la calificacion del estudiante');
          String? c = stdin.readLineSync();
          if(c!=null && c!=''){
            print('Estudiante $n con calificacion $c añadido');
            //Para se justos, esto de aqui abajo si lo he tenido que buscar
            calificaciones.putIfAbsent(n,()=>c);
          }else{
            print('Debe aportar un valor');
          }
        }else{
          print('Debe aportar un nombre');
        }
        break;
      case "2":
        print('Escriba el nombre del estudiante');
        String? n = stdin.readLineSync();
        if(n!=null && n!='') {
          if(calificaciones.containsKey(n)){
            print('Se ha eliminado el estudiante $n');
            calificaciones.remove(n);
          }else{
            print('El estudiante $n no existe');
          }
        }else{
          print('Debe aportar un nombre');
        }
        break;
      case "3":
        print('Escriba el nombre del estudiante');
        String? n = stdin.readLineSync();
        if(n!=null && n!='') {
          if(calificaciones.containsKey(n)){
            print('El estudiante con nombre $n tiene una calificación de ${calificaciones[n]} puntos');
          }else{
            print('El estudiante $n no existe');
          }
        }else{
          print('Debe aportar un nombre');
        }
        break;
      case "4":
        for(String s in calificaciones.keys){
          print('|Nombre: $s | Calificación: ${calificaciones[s]}|');
        }
        break;
      case "0":
        print('Adios');
        break;
      default:
        print('Opción invalida');
        break;
    }
  }while(op!="0");
}