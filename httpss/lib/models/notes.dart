class Notes {
  final int id;
  final String title;
  final String description;
  final DateTime added_time;
  final DateTime update_time;

  Notes({
    required this.id,
    required this.title,
    required this.description,
    required this.added_time,
    required this.update_time,
  });

  factory Notes.fromJson(Map<String, dynamic> json) {
    return Notes(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      added_time: DateTime.parse(json['added_time']),
      update_time: DateTime.parse(json['update_time']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'added_time': added_time.toIso8601String(),
    'update_time': update_time.toIso8601String(),
  };
}
