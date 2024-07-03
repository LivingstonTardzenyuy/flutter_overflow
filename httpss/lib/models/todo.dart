class Todo{
  int? id;
  final String title;
  final String description;

  Todo({this.id,required this.title,required this.description});
  // Getting the data from server
  factory Todo.fromJson(Map<String, dynamic> json){
    return Todo(
      id: json['id'],
      title: json['title'],
      description: json['description']
    );
  }

  // Sending the data to server
  dynamic toJson() => {
    'id': id,   // because it will be done from backEnd
    'title': title,
    'description': description
  };

}





