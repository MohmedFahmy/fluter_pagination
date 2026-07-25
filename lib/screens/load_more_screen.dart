import 'package:flutter/material.dart';

import '../data/pagination_data.dart';
import '../model/item_model.dart';
import '../widget/item_card.dart';

class LoadMoreScreen extends StatefulWidget {
  const LoadMoreScreen({super.key});

  @override
  State<LoadMoreScreen> createState() => _LoadMoreScreenState();
}

class _LoadMoreScreenState extends State<LoadMoreScreen> {
  final List<ItemModel> _items = [];

  bool _isLoading = false;
  bool _hasMore = true;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _loadInitialData();
  }

  void _loadInitialData() {
    _items.addAll(PaginationData.pages[_currentPage]);
  }

  Future<void> _loadMoreItems() async {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(milliseconds: 300));

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

  Widget _buildLoadMoreButton() {
    if (_isLoading) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (!_hasMore) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Center(
          child: Text(
            'No More Items',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: _loadMoreItems,
          child: const Text('Load More'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Load More Pagination')),
      body: ListView.builder(
        itemCount: _items.length + 1,
        itemBuilder: (context, index) {
          if (index < _items.length) {
            return ItemCard(item: _items[index]);
          }

          return _buildLoadMoreButton();
        },
      ),
    );
  }
}
