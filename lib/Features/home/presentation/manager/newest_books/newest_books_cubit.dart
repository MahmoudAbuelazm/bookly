import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book/book.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsBooks() async {
    emit(NewestBooksLoading());
    final result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(
        NewestBooksFailure(failure.errmessage),
      ),
      (books) => emit(
        NewestBooksSuccess(books),
      ),
    );
  }
}
