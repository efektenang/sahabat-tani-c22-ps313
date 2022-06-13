class ArticleMenuModel {
  String? image;
  String? title;
  String? content;

  ArticleMenuModel({this.image, this.title, this.content});

  factory ArticleMenuModel.fromJson(Map<String, dynamic> json) => ArticleMenuModel(
        title: json['title'] ?? "",
        image: json['image'] ?? "",
        content: json['content'] ?? "",
      );

  toJson() => {
        'title': title,
        'image': image,
        'content': content,
      };

  @override
  String toString() {
    return "ArticleModel("
            "image=$image,"
            "title=$title,"
            "content=$content"
            ")"
        .toString();
  }
}
