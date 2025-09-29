class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'],
      name: json['name'],
    );
  }
}

  class artilcles {
  String? author;
  String? description;
  String? urlToImage;
  String?content;
  String? title;
  String?url;
  String?publishedAt;
  Source?source;
  bool?isFavourite;

  artilcles({this.source, this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content , this.isFavourite=false});

  factory artilcles.fromJson(Map<String, dynamic> json) => artilcles(
    source     :Source.fromJson(json['source'] as Map<String, dynamic>),
    author     :json['author'],
    title      :json['title'],
    description:json['description'],
    url        :json['url'],
    urlToImage :json['urlToImage'],
    publishedAt:json['publishedAt'],
    content     :json['content'],
  );

}
