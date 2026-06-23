import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/features/home/cubit/home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(BuildContext context) => BlocProvider.of(context);
  final TextEditingController tempController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  List<String> _allItems = [
    'Laptop',
    'IPhone',
    'MacBook',
    'Headphones',
    'Keyboard',
  ];
  List<String> _filteredItems = [];
  List<String> get filteredItems => _filteredItems;
  void filtersItems(String query) {
    final lowerCaseQuery = query.toLowerCase();
    if (query.isEmpty) {
      _filteredItems = [];
    } else {
      _filteredItems = _allItems
          .where((item) => item.toLowerCase().contains(lowerCaseQuery))
          .toList();
    }
    emit(SearchFilteredItemsState(_filteredItems));
  }
}
