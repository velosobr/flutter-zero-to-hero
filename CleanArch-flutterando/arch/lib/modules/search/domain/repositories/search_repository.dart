import 'package:arch/modules/search/domain/entity/result_search.dart';
import 'package:arch/modules/search/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepository {
  Future<Either<FailureSearch, List<ResultSearch>>> search(String searchText);
}
