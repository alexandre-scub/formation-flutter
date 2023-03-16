Future<int> runner() async => Future.value(3);

int calculate() => 6 * 7;

main() async {
  print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Exemple async/await !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
  await exempleAsyncAwait();
  print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Exemple Then !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
  await exempleThen();
  print(" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Exemple delayed !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
  await exempleDelayed();
  print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Exemple wait !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
  await exempleWait();
  print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Exemple do/while !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
  await exempleDoWihle();
}

///Future est une tâche qui s'exécute de manière asynchrone
///Future.then() permet de retourner une valeur et de pouvoir exécuter une tâche sur cette valeur après que la future
///soit terminée
///exemple de Future.then()
exempleThen() {
  print('Avant Future');
  Future((){
    print('Future active');
  }).then((_){    /// le _ peut être remplacé par n'importe quel nom de variable, il représente la valeur retournée par la future
    print('Future terminée');
  });
  print('Après Future'); ///<-- cette ligne s'exécute avant la ligne "Future terminée"
}

///Future.delayed() permet de retourner une valeur après un certain temps
exempleDelayed() {
  print('Avant Future');
  Future.delayed(Duration(seconds: 3), (){
    print('Future terminée');
  });
  print('Après Future'); ///<-- cette ligne s'exécute avant la ligne "Future terminée"
}

///Future.wait() permet de retourner une valeur après que toutes les futures soient terminées
exempleWait() {
  print('Avant Future');
  Future.wait([
    Future.delayed(Duration(seconds: 3), (){
      print('Future 1 terminée');
    }),
    Future.delayed(Duration(seconds: 1), (){
      print('Future 2 terminée');
    }),
    Future.delayed(Duration(seconds: 4), (){
      print('Future 3 terminée');
    }),
  ]).then((_){
    print('Toutes les futures sont terminées');
  });
  print('Après Future'); ///<-- cette ligne s'exécute avant la ligne "Toutes les futures sont terminées"
}

/// Future.doWhile() permet de retourner une valeur après que toutes les futures soient terminées
exempleDoWihle() {
  print('Avant Future');
  Future.doWhile(() async {
    print('Future active');
    await Future.delayed(Duration(seconds: 5));
    return false;
  }).then((_){
    print('Future terminée');
  });
  print('Après Future'); ///<-- cette ligne s'exécute avant la ligne "Future terminée"
}

/// exemple de Async et await
exempleAsyncAwait() async {
  print('Avant Future');
  await Future.delayed(Duration(seconds: 3), (){
    print('Future terminée');
  });
  print('Après Future'); ///<-- cette ligne s'exécute après la ligne "Future terminée"
}
