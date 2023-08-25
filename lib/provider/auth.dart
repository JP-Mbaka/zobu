import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zobu/data/dataset.dart';
import 'package:zobu/model/users.dart';

class authNotifier extends StateNotifier<List<Users>> {
  authNotifier() : super(usersList);
}

final usersProvider =
    StateNotifierProvider<authNotifier, List<Users>>((ref) => authNotifier());
