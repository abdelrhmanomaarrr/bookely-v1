part of 'news_books_cubit.dart';

sealed class NewsBooksState extends Equatable {
  const NewsBooksState();

  @override
  List<Object> get props => [];
}

final class NewsBooksInitial extends NewsBooksState {}
