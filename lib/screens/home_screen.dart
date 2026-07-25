import 'package:fluter_pagination/screens/infinite_scroll_screen.dart';
import 'package:fluter_pagination/screens/load_more_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/navigation_cubit.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Widget> _screens = const [
    InfiniteScrollScreen(),
    LoadMoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children: _screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              context
                  .read<NavigationCubit>()
                  .changePage(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.all_inclusive),
                label: 'Infinite Scroll',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                label: 'Load More',
              ),
            ],
          ),
        );
      },
    );
  }
}