import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        onSearch: (e) {},
        getSearchText: (e) async {
          emit(state.copyWith(searchText: e.val ?? '', isLoading: true));
          await Future.delayed(Duration(seconds: 2));
          add(SearchEvent.onSearch(query: e.val ?? ''));
          emit(state.copyWith(isLoading: false));
        },
      );
    });
  }
}
