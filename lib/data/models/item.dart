//import 'package:equatable/equatable.dart';
//Equatable
class Item   {
  int userId;
  int id;
  String title;
  String body;
  bool completed;
  bool isDeleting;

  Item(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body,
      required this.completed,
      required this.isDeleting});

  // Item copyWith({String? id, String? value, bool? isDeleting}) {
  //   return Item(
  //       userId: userId,
  //       id: this.id,
  //       title: title,
  //       body: body,
  //       completed: completed,
  //       isDeleting: isDeleting ?? this.isDeleting);
  // }

  Item.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'],
        completed = json['completed']?? false,
        isDeleting = json['isDeleting'] ?? false;

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
        'completed': completed,
        'isDeleting': isDeleting
      };

  // @override
  // List<Object> get props => [id, title, isDeleting];
}
