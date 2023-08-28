import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zobu/data/dataset.dart';
import 'package:zobu/post/create_post.dart';
import 'package:zobu/post/feeds.dart';
import 'package:zobu/profile/profile.dart';
import 'package:zobu/search/search.dart';
import 'package:zobu/style/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Map> data = [
    {
      'icon': Icons.home_outlined,
      'screen': const Feeds(),
    },
    {
      'icon': Icons.search,
      'screen': SearchScreen(),
    },
    {
      'icon': Icons.add_box_outlined,
      'screen': const CreatePostScreen(),
    },
    {
      'icon': Icons.person_outline_sharp,
      'screen': Profile(
        userArg: LoggedINuser[0],
      ),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data[_selectedIndex]['screen'],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primary,
          child: Container(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 35,
                      decoration: BoxDecoration(
                        border: index == _selectedIndex
                            ? const Border(
                                top: BorderSide(
                                  width: 5.0,
                                  color: Color.fromARGB(255, 3, 53, 44),
                                ),
                              )
                            : null,
                        gradient: index == _selectedIndex
                            ? LinearGradient(
                                colors: [
                                    Color.fromARGB(255, 11, 85, 73),
                                    Theme.of(context).colorScheme.primary,
                                  ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)
                            : null,
                      ),
                      child: Icon(
                        data[index]['icon'],
                        size: 35,
                        color: index == _selectedIndex
                            ? WHITE
                            : Color.fromARGB(255, 11, 85, 73),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
