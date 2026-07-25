import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();
  bool isLoading = false; // Flag to indicate if more items are being loaded
  final List<int> items = List.generate(20, (index) => index);
  int _loadCount =
      0; // Counter to keep track of how many times items have been loaded
  @override
  void initState() {
    scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (isLoading) return;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;
    final treggerDistance =
        200.0; // Distance from the bottom to trigger loading more items
    print('Max Scroll: $maxScroll, Current Scroll: $currentScroll');

    if (currentScroll >= maxScroll - treggerDistance) {
      // Load more items here
      print('Load more items');
      _loadMoreItems();
    }
  }

  void _loadMoreItems() {
    // Simulate loading more items (you can replace this with your actual logic)
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
        _loadCount++;
        items.addAll(List.generate(20, (index) => items.length + index));
      });
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagination')),
      body: Center(
        child: ListView.builder(
          controller: scrollController,
          itemCount: items.length, // Example item count
          itemBuilder: (context, index) {
            return ListTile(title: Text('Item $index'));
          },
        ),
      ),
    );
  }
}
