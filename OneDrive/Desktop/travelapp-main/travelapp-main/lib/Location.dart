// ignore: file_names
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Image.asset('images/map.png', width: 100,),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "Your Location",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "India, Tamil Nadu",
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          )
        ],
      ),
    );
  }
}