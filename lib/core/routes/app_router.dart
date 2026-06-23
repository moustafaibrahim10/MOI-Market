import 'package:go_router/go_router.dart';
import 'package:market/core/routes/app_routes.dart';
import 'package:market/features/auth/login/screens/forgot_password_screen.dart';
import 'package:market/features/auth/login/screens/login_screen.dart';
import 'package:market/features/auth/register/register_screen.dart';
import 'package:market/features/home/screens/srearch_screen.dart';
import 'package:market/features/main/screens/main_screen.dart';
import 'package:market/features/profile/screens/edit_profile_screen.dart';
import 'package:market/features/profile/screens/my_orders_screen.dart';
import 'package:market/features/shop/data/models/product_model.dart';
import 'package:market/features/shop/presentation/screens/product_details.dart';

final GoRouter appRoute = GoRouter(
  initialLocation: AppRoutes.mainScreen,
  routes: [
    GoRoute(path: AppRoutes.login, builder: (context, state) => LoginScreen()),
    GoRoute(
      path: AppRoutes.forgotPassword,
      builder: (context, state) => ForgotPasswordScreen(),
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.mainScreen,
      builder: (context, state) => MainScreen(),
    ),
    GoRoute(
      path: AppRoutes.searchScreen,
      builder: (context, state) {
        return SearchScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.editProfileScreen,
      builder: (context, state) => const EditProfileScreen(),
    ),
    GoRoute(
      path: AppRoutes.myOrdersScreen,
      builder: (context, state) => const MyOrdersScreen(),
    ),
    GoRoute(
      path: AppRoutes.productDetailsScreen,
      builder: (context, state) {
        final ProductModel product = state.extra as ProductModel;
        return ProductDetails(product: product);
      },
    ),
  ],
);
