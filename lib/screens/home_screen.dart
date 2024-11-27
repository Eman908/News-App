import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true, // AppBar reappears when you scroll up.
              pinned: false, // AppBar doesn't stay fixed at the top.
              snap: true, // Ensures the AppBar snaps into place when scrolling.
              elevation: 0,
              centerTitle: true,
              title: RichText(
                text: TextSpan(
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                  children: <TextSpan>[
                    const TextSpan(
                        text: 'News', style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: 'Cloud',
                        style: TextStyle(
                            color: Colors.amber[900] ?? Colors.amber)),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: CategoryList()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            const NewsListBuilder(
              category: 'general',
            )
          ],
        ),
      ),
    );
  }
}
