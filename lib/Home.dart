import 'package:flutter/material.dart';
import 'Location.dart';
import 'Tourist_place.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Good Morning",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            Text(
              "Vishal kumar.G",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          const LocationCard(),
          const SizedBox(height: 15),
          const TouristPlace(),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Recommendation",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("View All"),
              ),
            ],
          )
        ],
      ),
    );
  }
}