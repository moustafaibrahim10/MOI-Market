import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/widgets/custom_search_bar.dart';
import 'package:market/features/home/cubit/home_cubit.dart';
import 'package:market/features/home/cubit/home_states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        final cubit = HomeCubit.get(context);
        final displayedItems = cubit.filteredItems;
        return Scaffold(
          appBar: AppBar(title: const Text('Search')),
          body: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              CustomSearchBar(
                labelText: 'Search',
                controller: cubit.searchController,
                
                onChanged: (value) {
                  cubit.filtersItems(value);
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                
                physics: NeverScrollableScrollPhysics(),
                itemCount: displayedItems.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(displayedItems[index]));
                },
              ),

              // Add your search results here
            ],
          ),
        );
      },
    );
  }
}
