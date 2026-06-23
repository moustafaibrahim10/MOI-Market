import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:market/core/helper/app_constants.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/features/main/cubit/main_cubit.dart';
import 'package:market/features/main/cubit/main_states.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          final cubit = MainCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.selectedIndex],
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: GNav(
                selectedIndex: cubit.selectedIndex,
                onTabChange: (index){
                  cubit.changeBottomNavBar(index);
                },
                tabs: [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(icon: Icons.store, text: 'Shop'),
                  GButton(icon: Icons.favorite, text: 'Favorites'),
                  GButton(icon: Icons.person, text: 'Profile'),
                ],
                haptic: true,
                gap: 8,
                activeColor: AppColors.kWhiteColor,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: AppColors.kPrimaryColor,
                color: Colors.black,
                tabBorderRadius: AppConstants.borderRadius,
                tabActiveBorder: Border.all(
                  color: AppColors.kPrimaryColor,
                  width: 1,
                ),
                textStyle: AppTextStyles.font18WhiteRegular,

              ),
            ),
          );
        },
      ),
    );
  }
}
