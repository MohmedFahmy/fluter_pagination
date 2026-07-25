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
        imageUrl: 'images/image5.jfif',
        title: 'Green Forest',
        description: 'A peaceful view of a beautiful green forest.',
      ),
      ItemModel(
        id: 6,
        imageUrl: 'images/image6.jpg',
        title: 'Amazing Road',
        description: 'A long road with an amazing natural view.',
      ),
      ItemModel(
        id: 7,
        imageUrl: 'images/image7.png',
        title: 'Beautiful Lake',
        description: 'A beautiful lake surrounded by nature.',
      ),
      ItemModel(
        id: 8,
        imageUrl: 'images/image8.png',
        title: 'Travel Adventure',
        description: 'Start your next adventure and explore new places.',
      ),
    ],

    // Page 3
    [
      ItemModel(
        id: 9,
        imageUrl: 'images/image9.png',
        title: 'Amazing Architecture',
        description: 'Discover amazing architecture and unique designs.',
      ),
      ItemModel(
        id: 10,
        imageUrl: 'images/image10.png',
        title: 'Beautiful Landscape',
        description: 'Enjoy this beautiful landscape and peaceful view.',
      ),
      ItemModel(
        id: 11,
        imageUrl: 'images/image11.jpg',
        title: 'Nature View',
        description: 'A wonderful view for nature lovers.',
      ),
      ItemModel(
        id: 12,
        imageUrl: 'images/image12.jfif',
        title: 'New Adventure',
        description: 'Explore new places and create unforgettable memories.',
      ),
    ],
  ];
}
