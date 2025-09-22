import 'package:flutter/material.dart';
import 'package:flutter_components/models/item.dart';
import 'package:flutter_components/widget/item_card.dart';

final List<Item> items = const [
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
    title: 'Glass Souls World Tour',
    subtitle: 'From your recent favorites',
  ),
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85',
    title: 'New Music Friday',
    subtitle: 'From your favorite artists',
  ),
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1757263005786-43d955f07fb1',
    title: 'Dreamy Nights',
    subtitle: 'Chill & relax',
  ),
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3',
    title: 'Colorful Beats',
    subtitle: 'Party vibes',
  ),
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
    title: 'Glass Souls World Tour',
    subtitle: 'From your recent favorites',
  ),
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85',
    title: 'New Music Friday',
    subtitle: 'From your favorite artists',
  ),
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1757263005786-43d955f07fb1',
    title: 'Dreamy Nights',
    subtitle: 'Chill & relax',
  ),
  Item(
    imageUrl: 'https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3',
    title: 'Colorful Beats',
    subtitle: 'Party vibes',
  ),
];

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemCard(item: items[index]);
          },
        ),
      ),
    );
  }
}
