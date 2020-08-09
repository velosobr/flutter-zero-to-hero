import 'package:arch/modules/search/domain/entity/result_search.dart';
import 'package:arch/modules/search/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class SearchByText {
  Future <Either<FailureSearch, List<ResultSearch>>> call(String searchText);
}

class SearchByTextImpl implements SearchByText {
  @override
  Future<Either<FailureSearch, List<ResultSearch>>> call(String searchText) async {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}
