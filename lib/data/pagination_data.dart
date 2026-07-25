import '../model/item_model.dart';

class PaginationData {
  static const List<List<ItemModel>> pages = [
    // Page 1
    [
      ItemModel(
        id: 1,
        imageUrl: 'images/image1.jpg',
        title: 'Beautiful Nature',
        description: 'Explore the beauty of nature around the world.',
      ),
      ItemModel(
        id: 2,
        imageUrl: 'images/image2.jpg',
        title: 'Amazing Mountains',
        description: 'Discover amazing mountains and beautiful views.',
      ),
      ItemModel(
        id: 3,
        imageUrl: 'images/image3.png',
        title: 'Modern City',
        description: 'Experience the beauty of modern cities.',
      ),
      ItemModel(
        id: 4,
        imageUrl: 'images/image4.png',
        title: 'Beautiful Beach',
        description: 'Enjoy a relaxing day at the beautiful beach.',
      ),
    ],

    // Page 2
    [
      ItemModel(
        id: 5,
        imageUrl: 'https://picsum.photos/id/50/400/300',
        title: 'Green Forest',
        description: 'A peaceful view of a beautiful green forest.',
      ),
      ItemModel(
        id: 6,
        imageUrl: 'https://picsum.photos/id/60/400/300',
        title: 'Amazing Road',
        description: 'A long road with an amazing natural view.',
      ),
      ItemModel(
        id: 7,
        imageUrl: 'https://picsum.photos/id/70/400/300',
        title: 'Beautiful Lake',
        description: 'A beautiful lake surrounded by nature.',
      ),
      ItemModel(
        id: 8,
        imageUrl: 'https://picsum.photos/id/80/400/300',
        title: 'Travel Adventure',
        description: 'Start your next adventure and explore new places.',
      ),
    ],

    // Page 3
    [
      ItemModel(
        id: 9,
        imageUrl: 'https://picsum.photos/id/90/400/300',
        title: 'Amazing Architecture',
        description: 'Discover amazing architecture and unique designs.',
      ),
      ItemModel(
        id: 10,
        imageUrl: 'https://picsum.photos/id/100/400/300',
        title: 'Beautiful Landscape',
        description: 'Enjoy this beautiful landscape and peaceful view.',
      ),
      ItemModel(
        id: 11,
        imageUrl: 'https://picsum.photos/id/110/400/300',
        title: 'Nature View',
        description: 'A wonderful view for nature lovers.',
      ),
      ItemModel(
        id: 12,
        imageUrl: 'https://picsum.photos/id/120/400/300',
        title: 'New Adventure',
        description: 'Explore new places and create unforgettable memories.',
      ),
    ],
  ];
}
