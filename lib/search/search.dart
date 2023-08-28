import 'package:flutter/material.dart';
import 'package:zobu/constant/dimensions.dart';
import 'package:zobu/constant/image_refs.dart';

import '../style/colors.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: GREEN,
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(Icons.person_outline_sharp),
                  ),
                ],
              ),
              SizedBox(height: height(context) * 0.02),
              TextFormField(
                key: _key,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    fillColor: GREY1,
                    hintText: 'search...',
                    prefixIcon: const Icon(Icons.search)),
              ),
              SizedBox(height: height(context) * 0.02),
              Container(
                height: height(context) * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Image.asset(
                      test,
                      height: height(context) * 0.15,
                      width: width(context) * 0.25,
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
