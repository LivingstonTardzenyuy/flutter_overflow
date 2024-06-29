class Todo{
  final int id;
  final String title;
  final String description;

  Todo({required this.id,required this.title,required this.description});
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
    'id': DateTime.now(),
    'title': title,
    'description': description
  };

}