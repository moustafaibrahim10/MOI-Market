import 'package:flutter/material.dart';
import 'package:market/core/widgets/custom_app_bar.dart';
import 'package:market/features/profile/widgets/order_item.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Orders',
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          return const OrderItem();
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            thickness: 1.0,
          );
        },
        itemCount: 20,
      ),
    );
  }
}