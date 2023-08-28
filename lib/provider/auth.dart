import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zobu/data/dataset.dart';
import 'package:zobu/model/users.dart';

class authNotifier extends StateNotifier<List<UsersModel>> {
  authNotifier() : super(usersList);

  bool authenticateUser(username, password) {
    // final Users = state.contains();
    final user = state.firstWhere((element) =>
        element.username == username && element.password == password);

    final isValid = state.contains(user);

    if (isValid == false) {
      return false;
    }
    LoggedINuser.add(user);
    return true;
  }

  UsersModel finadUser(username) {
    final user = state.firstWhere((element) => element.username == username);

    return user;
  }

  void registerUser(UsersModel users) {
    state = [...state, users];
  }
}

final usersProvider =
    StateNotifierProvider<authNotifier, List<UsersModel>>((ref) {
  return authNotifier();
});
