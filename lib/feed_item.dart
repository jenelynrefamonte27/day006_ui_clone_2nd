import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({required this.title, required this.description, this.icon});

  final String title;
  final String description;
  final IconData? icon;

  @override
  Widget build(BuildContext content) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 120,
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon == null)
            Container(
              height: 56,
              width: 56,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            )
          else
            Container(
              height: 56,
              width: 56,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Icon(icon),
            ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
