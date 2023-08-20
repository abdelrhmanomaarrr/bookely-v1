import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit() : super(NewsBooksInitial());
}
