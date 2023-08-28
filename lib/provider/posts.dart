import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dataset.dart';
import '../model/posts.dart';

class postNotifier extends StateNotifier<List<PostModel>> {
  postNotifier() : super(post);

  bool addLikes(String id, String user) {
    final username = state.any((element) => element.user.username.contains(id));
    if (username) {
      state = state.where((element) => element.user.username != id).toList();
      return false;
    } else {
      // state = [...state, ];
      // Here we increment the likes and a new user. logic is still wrong
      return true;
    }
  }
}

final postsProvider = StateNotifierProvider<postNotifier, List<PostModel>>(
  (ref) => postNotifier(),
);
