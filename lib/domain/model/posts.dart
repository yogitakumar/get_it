class Posts {
  final String image;
  final String fact;

  Posts(this.image, this.fact);

  Posts.fromJson(Map<String, dynamic> json)
      : image = json["image"],
        fact = json["fact"];
}
