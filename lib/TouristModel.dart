// ignore: file_names, camel_case_types
class Tourist_placemodel{
  final String name;
  final String image;
  Tourist_placemodel({
    required this.name,
    required this.image,
  });
}
// ignore: non_constant_identifier_names
List<Tourist_placemodel>Tourist_place= [
  Tourist_placemodel(name: "Mountain", image: "images/mountain.png"),
  Tourist_placemodel(name: "Beach", image: "images/beach.png"),
  Tourist_placemodel(name: "Forest ", image: "images/forest.png"),
  Tourist_placemodel(name: "City", image: "images/city.png"),
  Tourist_placemodel(name: "Desert", image: "images/desert.png"),
];