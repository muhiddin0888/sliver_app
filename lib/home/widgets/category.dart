import 'package:flutter/material.dart';
import 'package:sliver_app/home/widgets/text_button.dart';

class PinnedHeaderCategory extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          const Text(
            "Category:",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF3C3A36)),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(text: "#CSS"),
                  SizedBox(
                    width: 15,
                  ),
                  CategoryWidget(text: "#UX"),
                  SizedBox(
                    width: 15,
                  ),
                  CategoryWidget(text: "#Swift"),
                  SizedBox(
                    width: 15,
                  ),
                  CategoryWidget(text: "#UI"),
                  SizedBox(
                    width: 15,
                  ),
                  CategoryWidget(text: "#UI"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
