import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodproject/features/posts/controller/posts_controller.dart';
import 'package:riverpodproject/features/posts/model/posts_model/posts_model.dart';

class PostsHome extends ConsumerWidget {
  const PostsHome({super.key});

  // final formattedPosts
  static String get routeName => 'posts';
  static String get routeLocation => 'posts';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<PostsModel> posts = ref.watch(postsProvider).posts;
    bool isLoading = ref.watch(postsProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverPod Demo'),
      ),
      // leading: BackButton(
      //   onPressed: context.pop,
      // )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // ref.read(PostsProvider.notifier).filterPosts(value);
              },
            ),
            Expanded(
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 16),
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.green[50],
                          child: ListTile(
                            leading: Text(posts[index].id.toString()),
                            title: Text(posts[index].title.toString()),
                            subtitle: Text(posts[index].body.toString()),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
