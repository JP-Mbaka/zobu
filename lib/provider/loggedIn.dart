import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zobu/model/users.dart';

class loggedInNotifier extends StateNotifier<List<UsersModel>> {
  loggedInNotifier() : super([]);

  void loggedInUser(username, password) {
    final user = state.firstWhere((element) =>
        element.username == username && element.password == password);
    state = [...state, user];
  }
}

final loggedInProvider =
    StateNotifierProvider<loggedInNotifier, List<UsersModel>>(
        (ref) => loggedInNotifier());
