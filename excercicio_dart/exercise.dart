main() {
  print("ola");
  int a = 10;

  var b = 8;

  print(b);

  if(a.compareTo(b) == 0){
    print("não é igual");
  }else{
    print("é igual");
  }

  print(a is String);

  var nomes = ['Lino', 'Veloso', 'Junior'];
  print(nomes.length);
  print(nomes);


  Set<int> conjunto = {0, 1, 2 ,3, 4,4,4,4};
  print(conjunto.length);
  print(conjunto);
  print(conjunto is Set);

  Map<String, double> notasDosAlunos = {
    "Lino": 9.7
  };
Map<String, double> outraNota = {"Cláudio": 4.8};
  print(notasDosAlunos);

  notasDosAlunos.addAll(outraNota);
print(notasDosAlunos);
for (var chave in notasDosAlunos.values) {
  print(chave);
}

}