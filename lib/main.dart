import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/cart_cubit.dart';
import 'pages/cart_grid_page.dart';

void main() {
  runApp(const CartApp());
}

class CartApp extends StatelessWidget {
  const CartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CartCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cart Application',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.blueAccent,
          fontFamily: 'Poppins', 
        ),
        home: const CartGridPage(),
      ),
    );
  }
}
