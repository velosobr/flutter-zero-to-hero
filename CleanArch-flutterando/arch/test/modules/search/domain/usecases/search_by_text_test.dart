import 'package:arch/modules/search/domain/entity/result_search.dart';
import 'package:arch/modules/search/domain/usecases/search_by_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final usecase = SearchByTextImpl();
  
  test('Deve retornar uma lista de ResultSearch', () async{

    final result = await usecase("Lino");

    expect(result, isA<Right>());
    expect(result | null, isA<List<ResultSearch>>());
  });
}