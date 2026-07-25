import 'package:flutter/material.dart';

import '../data/pagination_data.dart';
import '../model/item_model.dart';
import '../widget/item_card.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  final ScrollController _scrollController = ScrollController();

  final List<ItemModel> _items = [];

  bool _isLoading = false;
  bool _hasMore = true;

  int _currentPage = 0;

  static const double _triggerDistance = 200.0;

  @override
  void initState() {
    super.initState();

    _loadInitialData();

    _scrollController.addListener(_onScroll);
  }

  void _loadInitialData() {
    _items.addAll(PaginationData.pages[_currentPage]);
  }

  void _onScroll() {
    if (_isLoading || !_hasMore) return;

    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;

    final currentScroll = _scrollController.position.pixels;

    print(
      'Max Scroll: $maxScroll, '
      'Current Scroll: $currentScroll',
    );

    if (currentScroll >= maxScroll - _triggerDistance) {
      print('Load more items');

      _loadMoreItems();
    }
  }

  Future<void> _loadMoreItems() async {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    // Simulate API request
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    setState(() {
      _currentPage++;

      if (_currentPage < PaginationData.pages.length) {
        _items.addAll(PaginationData.pages[_currentPage]);
      } else {
        _hasMore = false;
      }

      _isLoading = false;
    });
  }

  Widget _buildBottomWidget() {
    if (_isLoading) {
      return const Padding(
        padding: EdgeInsets.all(24),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (!_hasMore) {
      return const Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Text(
            'No More Items',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);

    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Infinite Scroll Pagination')),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _items.length + 1,
        itemBuilder: (context, index) {
          if (index < _items.length) {
            return ItemCard(item: _items[index]);
          }

          return _buildBottomWidget();
        },
      ),
    );
  }
}
