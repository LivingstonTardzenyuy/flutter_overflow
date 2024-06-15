import 'package:uuid/uuid.dart';
class BreadCrumb{
  bool isActive;
  final String name;
  final String uuid;
  BreadCrumb({
    required this.isActive, required this.name
}) : uuid = const Uuid().v4();

  void isActivate() {
    isActive = true;
  }

  @override
  bool operator ==(covariant BreadCrumb other) =>
      uuid == other.uuid;
      // isActive == other.isActive && name = other.name;
  @override
  int get hashCode => uuid.hashCode;

  String get title => name + (isActive ? '>' : '');
}