import 'package:bokkly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(errorMessage: failure.errorMessage));
      },
      (newestBooks) {
        emit(NewestBooksSuccess(newestBooks: newestBooks));
      },
    );
  }
}
