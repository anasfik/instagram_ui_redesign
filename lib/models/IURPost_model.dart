class IURPostModel {
  IURPostModel({
    required this.postId,
    required this.title,
    required this.description,
    required this.imgPaths,
    required this.timeOfPublish,
    required this.authorName,
    required this.authorImgPath,
    required this.showCaseComment,
    required this.tags,
    required this.likes,
    required this.comments,
    required this.isLiked,
    required this.showCaseCommentAuthor,
    required this.iURPostModelPageController,
  });

  final iURPostModelPageController;
  String title,
      authorName,
      authorImgPath,
      description,
      showCaseComment,
      showCaseCommentAuthor;
  int likes, comments, postId;
  bool isLiked;
  List<String> imgPaths, tags;
  DateTime timeOfPublish;
}
