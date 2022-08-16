import 'package:flutter/material.dart';
import 'package:sliver_app/home/widgets/category.dart';
import 'package:sliver_app/home/widgets/category_box.dart';
import 'package:sliver_app/home/widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            backgroundColor: Colors.white,
            expandedHeight: 130,
            flexibleSpace: FlexibleSpaceBar(
              title: SingleChildScrollView(
                child: Container(
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hello,",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "Muhiddin",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/icons/notification.png",
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: false,
            delegate: PinnedHeaderView(),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PinnedHeaderCategory(),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CategoryCard(
                            onTap: () {},
                            color: const Color(0xFFF8F2EE),
                            images: "assets/images/UI.png",
                            time: "3 h 30 min ",
                            title: "UI",
                            subtitel: "Advanced mobile interface design"),
                        const SizedBox(
                          height: 20,
                        ),
                        CategoryCard(
                            onTap: () {},
                            color: const Color(0xFFE6EDF4),
                            images: "assets/images/UI2.png",
                            time: "3 h 30 min ",
                            title: "UX",
                            subtitel: "Advanced mobile interface design"),
                        const SizedBox(
                          height: 20,
                        ),
                        CategoryCard(
                            onTap: () {},
                            color: const Color(0xFFF8F2EE),
                            images: "assets/images/UI3.png",
                            time: "3 h 30 min ",
                            title: "UX",
                            subtitel: "Advanced mobile interface design"),
                      ],
                    ),
                  ),
                );
              },
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 0.1,
            ),
          )
        ],
      ),
    ));
  }
}
