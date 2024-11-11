class HomeTabModel {
  String imagePath;
  String name;
  String? headLine;
  HomeTabModel({required this.imagePath, required this.name, this.headLine});
}

List<HomeTabModel> hometab = [
  HomeTabModel(imagePath: "assets/homeAssets/sports.png", name: "Internship")
];
