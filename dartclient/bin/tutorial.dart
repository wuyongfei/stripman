// "id":111,"title":"Java - The Good Parts","description":"Java - The Good Parts","published":0,"updatedAt":"2022-03-23T01:31:56.000Z"

class Tutorial {
  final int id;
  final String title;
  final String description;
  final bool published;
  final DateTime updatedAt;

  Tutorial(
      {this.id, this.title, this.description, this.published, this.updatedAt});

  factory Tutorial.fromJson(Map<String, dynamic> json) {
    return Tutorial(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      published: json['published'] as int == 0 ? false : true,
      updatedAt: (json['updatedAt'] as String).isEmpty
          ? null
          : DateTime.parse(json['updatedAt']),
    );
  }

  @override
  String toString() {
    return 'Tutorial {id: $id, Title: $title, Published: $published on $updatedAt}';
  }
}
