class IURStoriesModel {
  IURStoriesModel({
    required this.title,
    required this.imgPath,
    this.isAddStorieItem = false, 
  });

  String imgPath;
  String title;
  bool isAddStorieItem;
}
