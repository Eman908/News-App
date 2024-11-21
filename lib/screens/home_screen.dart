import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/news_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: RichText(
            text: TextSpan(
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                children: <TextSpan>[
              const TextSpan(
                  text: 'News', style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: 'Cloud', style: TextStyle(color: Colors.amber[900])),
            ])),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryList()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            NewsList()

            // SliverToBoxAdapter(child: NewsList())
          ],
        ),
      ),
    );
  }
}

// NewsList()
// CategoryList()