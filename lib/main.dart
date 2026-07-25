import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/navigation_cubit.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => NavigationCubit(),
      child: const PaginationApp(),
    ),
  );
}

class PaginationApp extends StatelessWidget {
  const PaginationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pagination App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 3, 68, 121)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
