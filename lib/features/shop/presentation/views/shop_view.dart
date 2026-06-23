import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/routes/app_routes.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_search_bar.dart';
import 'package:market/features/home/cubit/home_cubit.dart';
import 'package:market/features/home/cubit/home_states.dart';
import 'package:market/features/shop/presentation/widgets/product_vertical_list.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = HomeCubit.get(context);
        return SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Center(
                child: Text(
                  'Welcome to MOI Market',
                  style: AppTextStyles.font24BlackSemiBold,
                ),
              ),
              verticalSpace(10.0),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint("Search Bar Clicked!");
                  context.push(AppRoutes.searchScreen, extra: cubit);
                },
                child: IgnorePointer(
                  child: CustomSearchBar(
                    readOnly: true,
                    labelText: 'Search',
                    controller: cubit.tempController,
                    ontap: () {
                      debugPrint("Search Bar Clicked!");
                      context.push(AppRoutes.searchScreen, extra: cubit);
                    },
                  ),
                ),
              ),
         
              verticalSpace(10.0.h),
              ProductsGridView(
              ),
            ],
          ),
        );
      },
    );
  }
}
