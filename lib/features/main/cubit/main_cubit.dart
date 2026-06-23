import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/features/favourites/views/favourite.dart';
import 'package:market/features/home/views/home_view.dart';
import 'package:market/features/main/cubit/main_states.dart';
import 'package:market/features/profile/views/profile_view.dart';
import 'package:market/features/shop/presentation/views/shop_view.dart';

class MainCubit extends Cubit<MainState>{

  MainCubit() : super(MainInitial());
  static MainCubit get(BuildContext context) => BlocProvider.of(context);

  int selectedIndex = 0;
  void changeBottomNavBar(int index) {
    selectedIndex = index;
    emit(ChangeBottomNavBarState());
  }
  List<Widget> screens = [
     HomeView(),
    const ShopView(),
    const FavouriteView(),
    const ProfileView(),
  ];



}