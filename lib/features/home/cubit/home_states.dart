abstract class HomeState {}
class HomeInitial extends HomeState {}
class SearchFilteredItemsState extends HomeState {
  final List<String> filteredItems;
  SearchFilteredItemsState(this.filteredItems);
}
