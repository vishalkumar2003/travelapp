// ignore: file_names
import 'package:flutter/material.dart';
import 'package:travel/TouristModel.dart';

class TouristPlace extends StatelessWidget {
  const TouristPlace({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(Tourist_place[index].name),
          avatar: CircleAvatar(
            backgroundImage: AssetImage(Tourist_place[index].image),
          ),
          backgroundColor: Colors.white,
          elevation: 0.4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          );
        },
        separatorBuilder: (context, index) => 
        const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: Tourist_place.length,
      ),
    );
  }
}