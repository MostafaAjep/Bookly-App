import 'package:bokkly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/Features/home/data/repos/home_repo.dart';
import 'package:bokkly_app/core/errors/failures.dart';
import 'package:bokkly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:programming&filtering=free-ebooks&sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
        return Right(books);
      }
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure());
    }
    return Left(ServerFailure());
  }
}
